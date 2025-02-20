# Dart Exception Handling: Missing Nested Exception Details

This repository demonstrates a common issue in Dart's exception handling where nested exceptions within asynchronous operations or JSON parsing are not easily accessible using a basic `catch (e)` block. The `bug.dart` file showcases the problem, while `bugSolution.dart` provides a solution using `catchError` for `Future` and more comprehensive exception handling for JSON decoding.

## Problem

In the `fetchData` function, if `json.decode` throws a FormatException (e.g., due to malformed JSON), the `catch (e)` block only captures the `FormatException`'s top-level message.  It doesn't provide details about the specific JSON parsing error.

## Solution

The improved `fetchData` function handles exceptions more robustly.  It uses a `try-catch` block within the `Future` to capture detailed error messages and provides better logging for troubleshooting.

This example provides a practical illustration of how to handle complex exceptions in Dart.