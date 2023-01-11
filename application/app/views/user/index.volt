<div class="px-3 py-4">
    <?php
        echo $this->tag->linkTo(["user/create", "Add User", 'class' => 'btn btn-primary']);
    ?>
</div>


<?php
if ($users->count() > 0) {
    ?>
    <div class="col-md-6">
        <table class="table table-bordered table-hover">
            <thead class="thead-light">
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Email</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <?php $i = 1; ?>
            <?php foreach ($users as $user) { ?>
                <tr>
                    <td><?php echo $i++ ?></td>
                    <td><?php echo $user->name; ?></td>
                    <td><?php echo $user->email; ?></td>
                    <td>
                        <a href="{{ url('user/show/' ~ user.id) }}" class="btn btn-info">Show</a>
                        <a href="{{ url('user/edit/' ~ user.id) }}" class="btn btn-warning">Edit</a>
                        <a href="{{ url('user/delete/' ~ user.id) }}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3">Users quantity: <?php echo $users->count(); ?></td>
                </tr>
            </tfoot>
        </table>
    </div>
    <?php
}
