// ---------------------------------------------------------------------
//
// Copyright (C) 2010 - 2015 by the deal.II authors
//
// This file is part of the deal.II library.
//
// The deal.II library is free software; you can use it, redistribute
// it, and/or modify it under the terms of the GNU Lesser General
// Public License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// The full text of the license can be found in the file LICENSE at
// the top level of the deal.II distribution.
//
// ---------------------------------------------------------------------


// check serialization for Tensor<1,dim>

#include "serialization.h"
#include <deal.II/base/point.h>


void test ()
{
  const unsigned int dim=3;

  Point<dim> p1(1.,2.,3.);

  Point<dim> p2(4.,5.,6.);

  verify (p1, p2);
}


int main ()
{
  std::ofstream logfile("output");
  deallog << std::setprecision(3);
  deallog.attach(logfile);

  test ();

  deallog << "OK" << std::endl;
}
