//
//  TestMatrix.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

//extension Matrix4 {
//
//    func SubMatrixOfMatrix4() -> String {
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: -6.0, pos: 0), MatrixEntry(value: 1.0, pos:1), MatrixEntry(value: 1.0, pos: 2), MatrixEntry(value: 6.0, pos: 3),
//                       MatrixEntry(value: -8.0, pos: 4), MatrixEntry(value: 5.0, pos: 5), MatrixEntry(value: 8.0, pos: 6), MatrixEntry(value: 6, pos: 7),
//                       MatrixEntry(value: -1.0, pos: 8), MatrixEntry(value: 0, pos: 9), MatrixEntry(value: 8, pos: 10), MatrixEntry(value: 2, pos: 11),
//                       MatrixEntry(value: -7.0, pos: 12), MatrixEntry(value: 1, pos: 13), MatrixEntry(value: -1, pos: 14), MatrixEntry(value: 1, pos: 15) ]
//        mat.AssignData(data: entries)
//
//        let mat1: Matrix3 = mat.SubMatrix(mat: mat, row: 2, col: 1)
//
//        if mat1.elements[1].value == 1 && mat1.elements[2].value == 6 && mat1.elements[4].value == 8 && mat1.elements[5].value == 6 && mat1.elements[7].value == -1 && mat1.elements[8].value == 1 {
//            result += "SubMatrix Of Matrix4: Passed\n"
//        } else {
//            result += "SubMatrix Of Matrix4: FAILED\n"
//        }
//
//        return result
//    }
//
//    func SubMatrixOfMatrix3() -> String {
//        var result = ""
//        var mat = Matrix3()
//        let entries = [MatrixEntry(value: 1.0, pos: 0), MatrixEntry(value: 5, pos:1), MatrixEntry(value: 0, pos: 2),
//                       MatrixEntry(value: -3, pos: 3), MatrixEntry(value: 2, pos: 4), MatrixEntry(value: 7.0, pos: 5),
//                       MatrixEntry(value: 0, pos: 6), MatrixEntry(value: 6, pos: 7), MatrixEntry(value: -3.0, pos: 8) ]
//        mat.AssignData(data: entries)
//
//        let mat1: Matrix2 = mat.SubMatrix(mat: mat, row: 0, col: 2)
//
//        if mat1.elements[0].value == -3 && mat1.elements[1].value == 2 && mat1.elements[2].value == 0 && mat1.elements[3].value == 6 {
//            result += "SubMatrix Of Matrix4: Passed\n"
//        } else {
//            result += "SubMatrix Of Matrix4: FAILED\n"
//        }
//
//        return result
//    }
//
//    func MinorOfMatrix3x3() -> String {
//        // page 36
//        var result = ""
//        var mat = Matrix3()
//        let entries = [MatrixEntry(value: 3.0, pos: 0), MatrixEntry(value: 5, pos:1), MatrixEntry(value: 0, pos: 2),
//                       MatrixEntry(value: 2, pos: 3), MatrixEntry(value: -1, pos: 4), MatrixEntry(value: -7.0, pos: -7),
//                       MatrixEntry(value: 6, pos: 6), MatrixEntry(value: -1, pos: 7), MatrixEntry(value: 5.0, pos: 5) ]
//        mat.AssignData(data: entries)
//
//        let b = mat.SubMatrix(mat: mat, row: 1, col: 0)
//        let det = b.determinant
//
//        if det == 25 {
//            result += "Determinant of SubMatrix3x3: Passed\n"
//        } else {
//            result += "Determinant of SubMatrix3x3: FAILED\n"
//        }
//
//        let minor = mat.Minor(mat: mat, row: 1, col: 0)
//        if minor == 25 {
//            result += "Minor Of Matrix3x3: Passed\n"
//        } else {
//            result += "Minor Of Matrix3x3: FAILED\n"
//        }
//
//        return result
//    }
//
//    func DeterminantOfMatrix3x3() -> String {
//        // page 37
//        var result = ""
//        var mat = Matrix3()
//        let entries = [MatrixEntry(value: 1.0, pos: 0), MatrixEntry(value: 2, pos:1), MatrixEntry(value: 6, pos: 2),
//                       MatrixEntry(value: -5, pos: 3), MatrixEntry(value: 8, pos: 4), MatrixEntry(value: -4.0, pos: -7),
//                       MatrixEntry(value: 2, pos: 6), MatrixEntry(value: 6, pos: 7), MatrixEntry(value: 4.0, pos: 5) ]
//        mat.AssignData(data: entries)
//
//        var temp = mat.CoFactor(mat: mat, row: 0, col: 0)
//        if temp == 56 {
//            result += "Determinant Of Matrix3x3: Passed\n"
//        } else {
//            result += "Determinant Of Matrix3x3: FAILED\n"
//        }
//
//        temp = mat.CoFactor(mat: mat, row: 0, col:  1)
//        if temp == 12 {
//            result += "Determinant Of Matrix3x3: Passed\n"
//        } else {
//            result += "Determinant Of Matrix3x3: FAILED\n"
//        }
//
//        temp = mat.CoFactor(mat: mat, row: 0, col:  2)
//        if temp == -46 {
//            result += "Determinant Of Matrix3x3: Passed\n"
//        } else {
//            result += "Determinant Of Matrix3x3: FAILED\n"
//        }
//
//        let det = mat.determinant
//        if det == -196 {
//            result += "Determinant Of Matrix3x3: Passed\n"
//        } else {
//            result += "Determinant Of Matrix3x3: FAILED\n"
//        }
//
//        return result
//    }
//
//    func DeterminantOfMatrix4x4() -> String {
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: -2.0, pos: 0), MatrixEntry(value: -8.0, pos:1), MatrixEntry(value: 3.0, pos: 2), MatrixEntry(value: 5.0, pos: 3),
//                       MatrixEntry(value: -3.0, pos: 4), MatrixEntry(value: 1.0, pos: 5), MatrixEntry(value: 7.0, pos: 6), MatrixEntry(value: 3, pos: 7),
//                       MatrixEntry(value: 1.0, pos: 8), MatrixEntry(value: 2, pos: 9), MatrixEntry(value: -9, pos: 10), MatrixEntry(value: 6, pos: 11),
//                       MatrixEntry(value: -6.0, pos: 12), MatrixEntry(value: 7, pos: 13), MatrixEntry(value: 7, pos: 14), MatrixEntry(value: -9, pos: 15) ]
//        mat.AssignData(data: entries)
//
//        var temp = mat.CoFactor(mat: mat, row: 0, col: 0)
//        if temp == 690 {
//            result += "Determinant Of Matrix4x4: Passed\n"
//        } else {
//            result += "Determinant Of Matrix4x4: FAILED\n"
//        }
//
//        temp = mat.CoFactor(mat: mat, row: 0, col: 1)
//        if temp == 447 {
//            result += "Determinant Of Matrix4x4: Passed\n"
//        } else {
//            result += "Determinant Of Matrix4x4: FAILED\n"
//        }
//
//        temp = mat.CoFactor(mat: mat, row: 0, col: 2)
//        if temp == 210 {
//            result += "Determinant Of Matrix4x4: Passed\n"
//        } else {
//            result += "Determinant Of Matrix4x4: FAILED\n"
//        }
//
//        temp = mat.CoFactor(mat: mat, row: 0, col: 3)
//        if temp == 51 {
//            result += "Determinant Of Matrix4x4: Passed\n"
//        } else {
//            result += "Determinant Of Matrix4x4: FAILED\n"
//        }
//
//        let det = mat.determinant
//        if det == -4071 {
//            result += "Determinant Of Matrix4x4: Passed\n"
//        } else {
//            result += "Determinant Of Matrix4x4: FAILED\n"
//        }
//
//        return result
//    }
//
//    func InvertibleMatrix4x4() -> String {
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: 6, pos: 0), MatrixEntry(value: 4, pos:1), MatrixEntry(value: 4, pos: 2), MatrixEntry(value: 4.0, pos: 3),
//                       MatrixEntry(value: 5.0, pos: 4), MatrixEntry(value: 5.0, pos: 5), MatrixEntry(value: 7.0, pos: 6), MatrixEntry(value: 6, pos: 7),
//                       MatrixEntry(value: 4.0, pos: 8), MatrixEntry(value: -9, pos: 9), MatrixEntry(value: 3, pos: 10), MatrixEntry(value: -7, pos: 11),
//                       MatrixEntry(value: 9.0, pos: 12), MatrixEntry(value: 1, pos: 13), MatrixEntry(value: 7, pos: 14), MatrixEntry(value: -6, pos: 15) ]
//        mat.AssignData(data: entries)
//
//        let det = mat.determinant
//        if det == -2120 {
//            result += "Invertible Matrix4x4: Passed\n"
//        } else {
//            result += "Invertible Matrix4x4: FAILED\n"
//        }
//
////        var temp: Matrix4?
////        temp = mat.Invert(mat: mat)
//
//        return result
//    }
//
//    func InveribleMatrix4x4_2() -> String {
//        // page 40
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: -5, pos: 0), MatrixEntry(value: 2, pos:1), MatrixEntry(value: 6, pos: 2), MatrixEntry(value: -8.0, pos: 3),
//                       MatrixEntry(value: 1.0, pos: 4), MatrixEntry(value: -5, pos: 5), MatrixEntry(value: 1.0, pos: 6), MatrixEntry(value: 8, pos: 7),
//                       MatrixEntry(value: 7.0, pos: 8), MatrixEntry(value: 7, pos: 9), MatrixEntry(value: -6, pos: 10), MatrixEntry(value: -7, pos: 11),
//                       MatrixEntry(value: 1.0, pos: 12), MatrixEntry(value: -3, pos: 13), MatrixEntry(value: 7, pos: 14), MatrixEntry(value: 4, pos: 15) ]
//        mat.AssignData(data: entries)
//        let invertMat = mat.Invert(mat: mat)
//        result += invertMat.1 + " - "
//        let mat2 = invertMat.0
//
//        if mat2?.m00 == 0.21804511278195488 && mat2?.m11 == -1.456766917293233 && mat2?.m22 == -0.05263157894736842 && mat2?.m33 == 0.306390977443609 {
//            result += "Invertible Matrix4x4 #2: Passed\n"
//        } else {
//            result += "Invertible Matrix4x4 #2: FAILED\n"
//        }
//
//        return result
//    }
//
//    func InveribleMatrix4x4_3() -> String {
//        // page 40
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: -4, pos: 0), MatrixEntry(value: 2, pos:1), MatrixEntry(value: -2, pos: 2), MatrixEntry(value: -3.0, pos: 3),
//                       MatrixEntry(value: 9, pos: 4), MatrixEntry(value: 6, pos: 5), MatrixEntry(value: 2, pos: 6), MatrixEntry(value: 6, pos: 7),
//                       MatrixEntry(value: 0, pos: 8), MatrixEntry(value: -5, pos: 9), MatrixEntry(value: 1, pos: 10), MatrixEntry(value: -5, pos: 11),
//                       MatrixEntry(value: 0, pos: 12), MatrixEntry(value: 0, pos: 13), MatrixEntry(value: 0, pos: 14), MatrixEntry(value: 0, pos: 15) ]
//        mat.AssignData(data: entries)
//        let invertMat = mat.Invert(mat: mat)
//        result += invertMat.1 + " - "
//        let mat1 = invertMat.0
//        if  mat1 == nil {
//            result += "Cannot Invert.\n"
//        } else {
//            result += "This Matrix is invertible.\n"
//        }
//
//        return result
//    }
//
//    func CalculatingTheInverseOfMatrix4x4() -> String {
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: 8, pos: 0), MatrixEntry(value: -5, pos:1), MatrixEntry(value: 9, pos: 2), MatrixEntry(value: 2, pos: 3),
//                       MatrixEntry(value: 7, pos: 4), MatrixEntry(value: 5, pos: 5), MatrixEntry(value: 6, pos: 6), MatrixEntry(value: 1, pos: 7),
//                       MatrixEntry(value: -6, pos: 8), MatrixEntry(value: 0, pos: 9), MatrixEntry(value: 9, pos: 10), MatrixEntry(value: 6, pos: 11),
//                       MatrixEntry(value: -3, pos: 12), MatrixEntry(value: 0, pos: 13), MatrixEntry(value: -9, pos: 14), MatrixEntry(value: -4, pos: 15) ]
//        mat.AssignData(data: entries)
//        let invertMat = mat.Invert(mat: mat)
//        result += invertMat.1 + " - "
//        let mat1 = invertMat.0
//        if mat1?.m00 == -0.15384615384615385 && mat1?.m10 == -0.07692307692307693 && mat1?.m20 == 0.358974358974359 && mat1?.m30 == -0.6923076923076923 {
//            result += "Calculating The Inverse Of Matrix4x4: Passed\n"
//        } else {
//            result += "Calculating The Inverse Of Matrix4x4: FAILED\n"
//        }
//
//        return result
//    }
//
//    func CalculatingTheInverseOfThirdMatrix4x4() -> String {
//        var result = ""
//        var mat = Matrix4()
//        let entries = [MatrixEntry(value: 9, pos: 0), MatrixEntry(value: 3, pos:1), MatrixEntry(value: 0, pos: 2), MatrixEntry(value: 9, pos: 3),
//                       MatrixEntry(value: -5, pos: 4), MatrixEntry(value: -2, pos: 5), MatrixEntry(value: -6, pos: 6), MatrixEntry(value: -3, pos: 7),
//                       MatrixEntry(value: -4, pos: 8), MatrixEntry(value: 9, pos: 9), MatrixEntry(value: 6, pos: 10), MatrixEntry(value: 4, pos: 11),
//                       MatrixEntry(value: -7, pos: 12), MatrixEntry(value: 6, pos: 13), MatrixEntry(value: 6, pos: 14), MatrixEntry(value: 2, pos: 15) ]
//        mat.AssignData(data: entries)
//        let invertMat = mat.Invert(mat: mat)
//        result += invertMat.1 + " - "
//        let mat1 = invertMat.0
//        if mat1?.m00 == -0.04074074074074074 && mat1?.m10 == -0.07777777777777778 && mat1?.m20 == -0.029012345679012345 && mat1?.m30 == 0.17777777777777778 {
//            result += "Calculating The Inverse Of Third Matrix4x4: Passed\n"
//        } else {
//            result += "Calculating The Inverse Of Third Matrix4x4: FAILED\n"
//        }
//
//        return result
//    }
//
//    func MultiplyProductByInverse() -> String {
//        var result = ""
//        var mat1 = Matrix4()
//        let entries1 = [MatrixEntry(value: 3, pos: 0), MatrixEntry(value: -9, pos:1), MatrixEntry(value: 7, pos: 2), MatrixEntry(value: 3, pos: 3),
//                       MatrixEntry(value: 3, pos: 4), MatrixEntry(value: -8, pos: 5), MatrixEntry(value: 2, pos: 6), MatrixEntry(value: -9, pos: 7),
//                       MatrixEntry(value: -4, pos: 8), MatrixEntry(value: 4, pos: 9), MatrixEntry(value: 4, pos: 10), MatrixEntry(value: 1, pos: 11),
//                       MatrixEntry(value: -6, pos: 12), MatrixEntry(value: 5, pos: 13), MatrixEntry(value: -1, pos: 14), MatrixEntry(value: 1, pos: 15) ]
//        mat1.AssignData(data: entries1)
//        var mat2 = Matrix4()
//        let entries2 = [MatrixEntry(value: 8, pos: 0), MatrixEntry(value: 2, pos:1), MatrixEntry(value: 2, pos: 2), MatrixEntry(value: 2, pos: 3),
//                       MatrixEntry(value: 3, pos: 4), MatrixEntry(value: -1, pos: 5), MatrixEntry(value: 7, pos: 6), MatrixEntry(value: 0, pos: 7),
//                       MatrixEntry(value: 7, pos: 8), MatrixEntry(value: 0, pos: 9), MatrixEntry(value: 5, pos: 10), MatrixEntry(value: 4, pos: 11),
//                       MatrixEntry(value: 6, pos: 12), MatrixEntry(value: -2, pos: 13), MatrixEntry(value: 0, pos: 14), MatrixEntry(value: 5, pos: 15) ]
//        mat2.AssignData(data: entries2)
//
//        let c = mat1 * mat2
//        guard let invB = mat2.Invert(mat: mat2).0 else { return "Something went wrong" }
//        let mat3 = c * invB
//        if mat3 == mat1 {
//            result += "Multiply Product By Inverse: Passed\n"
//        } else {
//            result += "Multiply Product By Inverse: FAILED\n"
//        }
//
//        return result
//    }
//}

