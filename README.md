# QRClipboard

QRClipboard is a Python package that creates QR codes from the contents of the clipboard.

![QRClipboard](https://github.com/Friedjof/QRClipboard/blob/main/media/test-image-01.png)

## Installation
To install the package, follow these steps:

1. First, create the package by running the `make build` command. This command will generate the source distribution (`sdist`) and wheel (`bdist_wheel`) for the package.

2. Once the package is built, you can install it using `pipx` with the `make install` command. This command installs the package in an isolated environment to avoid any conflicts with other packages.

## Usage
After installing the package, you can execute it using the `qrclip` command:

```sh
qrclip
```

This command will read the current content of the clipboard, generate a QR code from it, and display the QR code.

## Development
To contribute to this project, follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch for your feature or bug fix:
   ```sh
   git checkout -b feature-new-feature
   ```
3. Make your changes and commit them with a meaningful message:
   ```sh
   git commit -m 'Add new feature'
   ```
4. Push your changes to GitHub:
   ```sh
   git push origin feature-new-feature
   ```
5. Open a pull request on GitHub to merge your changes.

## Commands
The project includes a `Makefile` that simplifies various tasks:

- To build the package, use `make build`. This command runs the `setup.py` script to create the source distribution and wheel for the package.

- To install the package, use `make install`. This command utilizes `pipx` to install the package in an isolated environment.

- To uninstall the package, use `make uninstall`. This command removes the package installed by `pipx`.

- To clean the build directories, use `make clean`. This command deletes the `build`, `dist`, and `.egg-info` directories to ensure a clean state.

- To run unit tests, use `make test`. This command executes all unit tests located in the `tests` directory to verify that the package works as expected.

- To upload the package to PyPI, use `make upload`. This command uses `twine` to upload the built distributions to the Python Package Index (PyPI). This step is optional and requires the `twine` module to be installed.

- To run the main script of the package, use `make run`. This command executes the main function defined in the `QRClipboard.main` module.

## License
This project is licensed under the MIT License. For more details, refer to the `LICENSE` file.

