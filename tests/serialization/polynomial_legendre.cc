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


// check serialization for Legendre

#include "serialization.h"
#include <deal.II/base/polynomial.h>
#include <boost/serialization/vector.hpp>


void test ()
{
  unsigned int degree1 = 3;
  Polynomials::Legendre p1(degree1);

  unsigned int degree2 = 5;
  Polynomials::Legendre p2(degree2);

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
