<?php include "./lib/connect.php" ?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grace Livingston's Inventory</title>
    <link rel="stylesheet" href="css/foundation.min.css" />
  </head>
  <body>
      <div class="grid-x grid-margin-x">
          <div class="cell small-12 large-12">
              <h1 class="text-center">Grace Livingston's Inventory</h1>
          </div>
      </div>

      <div class="grid-x">
          <div class="cell small-3 large-2">
              <div class="grid-x cell">
                  <h3>Menu</h3>
              </div>

              <div class="grid-x cell">
                  <label>Item search:
                      <input type="text" placeholder="Gadgets">
                  </label>
              </div>

          </div>
          <div class="cell small-9 large-10">
              <div class="grid-x cell">
                  <h3>Inventory</h3>
              </div>

              <div class="grid-x cell">
                  <table class="hover">
                      <thead>
                          <th>Date</th>
                          <th>Item Number</th>
                          <th>Description</th>
                          <th>Added</th>
                          <th>Removed</th>
                          <th>Total</th>
                      </thead>
                      <tbody>
                          <tr>
                              <form method="POST">
                                  <input type="hidden" name="action" value="create">
                                  <td>&nbsp</td>
                                  <td><input
                                          name="item_nbr"
                                          type="text"
                                          placeholder="Item #" /></td>
                                  <td><input name="description" type="text" placeholder="Description" /></td>
                                  <td><input name="added" type="text" placeholder="Added" /></td>
                                  <td><input name="removed" type="text" placeholder="Removed" /></td>
                                  <td><input type="submit" name="Send" class="button"></td>
                              </form>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>

      <script src="js/jquery.min.js"></script>
      <script src="js/what-input.min.js"></script>
      <script src="js/foundation.min.js"></script>
      <script>
       $(document).foundation();
      </script>

  </body>
</html>
