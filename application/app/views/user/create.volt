<div class="px-3 py-3">
    <h2>Add data user</h2>
</div>

<?php echo $this->tag->form("user/store"); ?>

  <div class="px-3 py-3">
    <p>
          <label for="name">Name</label>
          <?php echo $this->tag->textField("name"); ?>
      </p>

      <p>
          <label for="email">E-Mail</label>
          <?php echo $this->tag->textField("email"); ?>
      </p>

      <div class="row px-3">
        <a href="/" class="btn btn-warning mr-2">Back</a>
        <button type="submit" class="btn btn-success">Submit</button>
      </div>

  </div>

</form>
