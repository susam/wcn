Wander Console Network
======================

This project captures a snapshot of the Wander console network by
crawling the network from a set of [known][] consoles.

[known]: wcn.md


Create Snapshot
---------------

 1. Ensure the Wander project is available under the parent directory
    of this project.

    ```sh
    git clone https://codeberg.org/susam/wander.git ../wander2/
    ```

 2. Run the following command:

    ```sh
    make crawl
    ```

 2. In the web browser, run **Console** > **Crawl**.

 3. In the web browser console, execute the following JavaScript
    function:

    ```javascript
    cdj()
    ```

 4. Copy the JSON object and paste it to a file named `snap.json` in
    the top-level directory.

 5. Then execute the following command:

    ```
    make wcn
    ```
