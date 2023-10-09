@extends('samples') 
@section('content')
@php
 $role_id = Auth::user()->role_id;
@endphp
<div class="container-fluid">
  <div class="animated fadeIn">
    <div class="row">
      @if($role_id == 1)
      {{-- <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-primary h-100">
          <div class="card-body pb-0">
            <div class="btn-group float-right">
              <button type="button" class="btn btn-transparent dropdown-toggle p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="icon-settings"></i>
              </button>
              <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="{{ url('/') }}/AutoCare/workshop/search">Search Workshop</a>
                <a class="dropdown-item" href="{{ url('/') }}/AutoCare/sale/add">Sale Spare</a>
              </div>
            </div>
            <h4 class="mb-0">{{ $totalPendingJob }}</h4>
            <a href="{{ url('/') }}/AutoCare/workshop/add"><p style="color:white">Job Sheet</p></a>
          </div>
          <div class="chart-wrapper px-3" style="height:70px;">
            <canvas id="card-chart1" class="chart" height="70"></canvas>
          </div>
        </div>
      </div> --}}

      <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-warning h-100">
          <div class="card-body pb-0">
            <div class="btn-group float-right">
              <button type="button" class="btn btn-transparent dropdown-toggle p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="icon-settings"></i>
              </button>
              <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="{{ url('/') }}/AutoCare/customer/add">Customers Add/Search</a>
              </div>
            </div>
            <h4 class="mb-0">{{ $TotalCustomers }}</h4>
            <a href="{{ url('/') }}/AutoCare/customer/add"><p style="color:white">Customer</p></a>
          </div>
          <div class="chart-wrapper px-3" style="height:70px;">
            <canvas id="card-chart4" class="chart" height="70"></canvas>
          </div>
        </div>
      </div>



      <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-info h-100">
          <div class="card-body pb-0">
            <button type="button" class="btn btn-transparent p-0 float-right">
              <i class="icon-location-pin"></i>
            </button>
            <h4 class="mb-0">{{ $totalPendingJob }}</h4>
            <p>Suppliers</p>
          </div>
          <div class="chart-wrapper px-3" style="height:70px;">
            <canvas id="card-chart2" class="chart" height="70"></canvas>
          </div>
        </div>
      </div>

     

      
      @else
      <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-info h-100">
          <div class="card-body pb-0">
            <div>Welcome</div>
          </div>
          <div class="chart-wrapper px-3" style="height:70px;">
            <canvas id="card-chart4" class="chart" height="70"></canvas>
          </div>
        </div>
      </div>
      @endif
    </div>
  </div>
</div>
@endsection
