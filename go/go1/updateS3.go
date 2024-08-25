package main

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/s3/s3manager"
)

type book struct {
	ISBN   string `json:"isbn"`
	Title  string `json:"title"`
	Author string `json:"author"`
}

func handleRequest(ctx context.Context, e events.DynamoDBEvent) {
	for _, record := range e.Records {
		fmt.Printf("Processing request data for event ID %s, type %s.\n", record.EventID, record.EventName)

		// Print new values for attributes of type String
		for name, value := range record.Change.NewImage {
			if value.DataType() == events.DataTypeString {
				fmt.Printf("Attribute name: %s, value: %s\n", name, value.String())
			}
		}

		bookJSON, err := json.Marshal(record.Change.NewImage)
		if err != nil {
			fmt.Println(err, record.EventID)
			return
		}

		saveToS3(bookJSON, record.EventID)
	}
}

func saveToS3(obj []byte, fileName string) error {

	fmt.Printf("inside saveToS3 function")

	uploader := s3manager.NewUploader(session.New())

	fmt.Printf("created uploader")

	_, err := uploader.Upload(&s3manager.UploadInput{
		Bucket: aws.String("test-books-jsonfiles"),
		Key:    aws.String(fileName + ".json"),
		Body:   bytes.NewReader(obj),
	})

	if err != nil {
		// Print the error and exit.
		fmt.Printf("could not upload %q to %q\n", fileName, "test-books-jsonfiles")
		return err
	}

	fmt.Printf("Successfully uploaded %q to %q\n", fileName, "test-books-jsonfiles")

	return nil
}

func main() {
	lambda.Start(handleRequest)
}
