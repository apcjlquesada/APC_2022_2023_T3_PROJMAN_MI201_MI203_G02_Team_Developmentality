@include('admin/adminHeader')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<div class="content my-3">
    <p class="display-6"><i class="bi bi-person-fill-lock"></i> <strong>Deactivated Resident</strong></p>
    <hr style="color: black;">
    <div class="alert alert-primary" role="alert">
        <i class="bi bi-info-circle-fill"></i> This page is intended to display the list of deactivated resident accounts.
    </div>
    @include('sweetalert::alert')
    <table id="employee" class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th class="text-center">ID</th>
                <th class="text-center">Name</th>
                <th class="text-center" style="width: 30%">Address</th>
                <th class="text-center">Gender</th>
                <th class="text-center">Email</th>
                <th class="text-center">Age</th>
                <th class="text-center">View</th>
                @foreach($admin_info as $admin)
                @if($admin->role == 'Administrator')
                <th class="text-center">Activate</th>
                @endif
                @endforeach
            </tr>
        </thead>
        <tbody>
            @foreach($list_info as $user)

            @if($user->middle_name == 'N/A')
            <p hidden>{{$fullname = $user->first_name." ".$user->last_name}}</p>

            @else
            <p hidden>{{$fullname = $user->first_name." ".$user->middle_name." ".$user->last_name}}</p>

            @endif
            <tr>
                <p hidden>
                    {{ $age = \Carbon\Carbon::parse($user->birthdate)->age;}}
                </p>
                <p hidden>{{$address = $user->address_unitNo." ".$user->address_houseNo." ".$user->address_street." ".$user->address_purok}}</p>

                <td style="text-transform: uppercase;">{{$user->id}}</td>
                <td>{{ucwords(strtolower($fullname))." ".$user->suffix}}</td>
                <td>{{ucwords(strtolower($address))}} South Signal Village, Taguig City</td>
                <td style="text-transform: uppercase;">{{$user->gender}}</td>
                <td style="text-transform: uppercase;">{{$age}}</td>
                <td class="text-lowercase" style="text-transform: uppercase;">{{$user->email}}</td>
                <td class="text-center">

                    <a href="/viewResident/{{$user->id}}" type="submit" class="btn btn-success btn-sm"><i class="bi bi-eye-fill"></i> View</a>
                </td>
                @foreach($admin_info as $admin)
                @if($admin->role == 'Administrator')
                <td class="text-center">
                    <form method="post" action="{{ route('deact', $user->id) }}">
                        @csrf
                        <input name="_method" type="hidden" value="DELETE">
                        <button type="submit" class="btn btn-primary btn-sm show_confirm" data-toggle="tooltip" title='Deact'><i class="bi bi-person-check-fill"></i> Reactivate</button>
                    </form>
                </td>
                @endif
                @endforeach
            </tr>
            @endforeach
        </tbody>
    </table>
    <hr style="color: black;">
</div>




@foreach($admin_info as $admin)

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
<script type="text/javascript">
    $('.show_confirm').click(function(event) {
        var form = $(this).closest("form");
        var name = $(this).data("name");
        event.preventDefault();
        swal({
                title: 'Are you sure you want to deactivate this account?',
                text: "If you reactivate this account, it will be accessible.",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {

                    swal({
                        closeOnClickOutside: false,
                        dangerMode: true,
                        buttons: true,
                        title: "INPUT CREDENTIALS",
                        content: {
                            element: "input",
                            attributes: {
                                placeholder: "Type your password",
                                type: "password",
                            },
                        },
                    }).then((value) => {

                        if (value == "{{ucwords(strtolower($admin->last_name)).$admin->validID_num}}") {
                            form.submit();
                        } else if (value.dismiss == 'cancel') {
                            swal({
                                dangerMode: true,
                                title: "cancel",
                                icon: "error",
                            })
                        } else {
                            swal({
                                dangerMode: true,
                                title: "INVALID CREDENTIALS",
                                icon: "error",
                            });
                        }


                    });
                }
            });
    });
</script>
@endforeach
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.colVis.min.js"></script>

<script>
    $(document).ready(function() {
        var table = $('#employee').DataTable({
            responsive: true,
            order: [
                [2, 'asc']
            ],
            buttons: [{
                extend: 'excel',
                className: 'btn btn-warning mt-3 me-1 border border-secondary',
                text: '<i class="bi bi-download"></i> Download as Excel',
                filename: 'BARANGAY SOUTH SIGNAL VILLAGE REQUEST LIST',
                title: 'BARANGAY SOUTH SIGNAL VILLAGE REQUEST LIST',
                exportOptions: {
                    columns: [0, 1, 2]
                }
            }, {
                extend: 'pdf',
                className: 'btn btn-warning mt-3 border border-secondary',
                text: '<i class="bi bi-download"></i> Download as PDF',
                filename: 'BARANGAY SOUTH SIGNAL VILLAGE REQUEST LIST',
                title: 'BARANGAY SOUTH SIGNAL VILLAGE REQUEST LIST',
                exportOptions: {
                    columns: [0, 1, 2]
                }
            }]
        });

        table.buttons().container()
            .appendTo('#employee_wrapper .col-md-6:eq(0)');
    });
</script>

</html>