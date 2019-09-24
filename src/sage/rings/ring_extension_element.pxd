from sage.rings.ring cimport CommutativeRing
from sage.structure.element cimport Element
from sage.structure.element cimport CommutativeAlgebraElement
from sage.rings.ring_extension cimport RingExtension_class
from sage.rings.ring_extension cimport RingExtensionFractionField
from sage.rings.ring_extension cimport RingExtensionWithBasis


cpdef backend_element(x)
cpdef from_backend_element(x, RingExtension_class E)


cdef class RingExtensionElement(CommutativeAlgebraElement):
    cdef Element _backend

cdef class RingExtensionFractionFieldElement(RingExtensionElement):
    pass

cdef class RingExtensionWithBasisElement(RingExtensionElement):
    cdef _vector(self, CommutativeRing base)
    cdef _matrix(self, CommutativeRing base)
    cdef _trace(self, CommutativeRing base)
    cdef _norm(self, CommutativeRing base)
    cpdef minpoly(self, base=*, var=*)


