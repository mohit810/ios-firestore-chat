# Firestore-Chat

(On-going)

## Our Goal

Firestore Chat is an internet based messaging app. This project is using Firebase Firestore service as a backend database to store and retrieve our messages.

### CocoaPods

` pod 'Firebase/Auth' `
  
` pod 'Firebase/Firestore' `

### Steps to follow

* Clone the project.
* Create new Project in Firebase.
* Download and place the `GoogleService-Info.plist` in the same directory as the `Info.plist`.
* Initialize CocoaPods and add above mentioned pods.
* Create a Firestore DB with test rules.

### rules for Firestore

Paste rules writen below in the Firestore Rules Tab :
`service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if request.auth.uid != null;
    }
  }
}`
