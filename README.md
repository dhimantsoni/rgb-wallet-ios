

# RgbWallet

**RgbWallet** is a modern iOS wallet app for RGB smart contracts, built using Swift and SwiftUI. The app allows users to create and manage Bitcoin-based RGB wallets securely and efficiently.


## Project Structure

```
RgbWallet/
├── README.md
├── .gitignore
├── RgbWallet/
│   ├── Assets/
│   │   └── Assets.xcassets
│   ├── Models/           # Data models for wallet, transactions, assets, etc.
│   ├── Services/         # Business logic and network/api calls
│   ├── Utilities/        # Helper extensions and utility files
│   ├── ViewModels/       # ObservableObjects for UI binding
│   ├── Views/            # SwiftUI views
│   └── RgbWalletApp.swift # App entry point
├── RgbWalletTests/       # Unit tests
└── RgbWalletUITests/     # UI automation tests
```

## Features

* Create a new RGB wallet
* Import an existing RGB wallet
* Display wallet balances and assets
* Onboarding experience with a welcome screen
* Modular MVVM architecture using SwiftUI

## Testing

* **Unit Tests:** Located in `RgbWalletTests`
* **UI Tests:** Located in `RgbWalletUITests`

You can run all tests via `Cmd + U` in Xcode.


## Requirements

* iOS 16.0+
* Xcode 15+
* Swift 5.9+


## Dependencies

* `rgb-lib-swift` — Swift wrapper for RGB functionality


## License

MIT License
