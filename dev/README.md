Developer Notes
===============

Create Snapshot
---------------

 1. Ensure the Wander project is available under the parent directory
    of this project.

    ```sh
    git clone https://codeberg.org/susam/wander.git ../wander/
    ```

 2. Run the following command:

    ```sh
    make crawl
    ```

 2. In the web browser, run **Console** &rarr; **Crawl**.

 3. In the web browser console, execute the following JavaScript
    function:

    ```javascript
    cdj()
    ```

 4. Copy the JSON object and paste it to the file named
    `tmp/crawl.json`.

 5. Generate the website:

    ```sh
    make wcn
    ```

 6. Alternatively, to generate and publish the website, execute the
    following command:

    ```sh
    make pub
    ```
