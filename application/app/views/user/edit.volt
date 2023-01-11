<div class="px-3 py-3">
    <h2>Edit user</h2>
</div>

<?php echo $this->tag->form("user/update"); ?>

  <div class="px-3 py-3">
    <input type="hidden" name="id" value=<?php echo $id ?>>
    <p>
          <label for="name">Name</label>
          <input type="text" name="name" value="<?php echo $name ?>"/>
      </p>

      <p>
          <label for="email">E-Mail</label>
          <input type="email" name="email" value="<?php echo $email ?>"/>
      </p>

      <div class="row px-3">
        <a href="/" class="btn btn-warning mr-2">Back</a>
        <button type="submit" class="btn btn-success">Update</button>
      </div>

  </div>

</form>
