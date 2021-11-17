//
//  TestMatrices.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

extension Matrix {
    
    func ConstructAMatrix() -> String {
        var result = ""
        var mat = Matrix4()
        let data = [ 1.0, 2.0, 3.0, 4.0,
                     5.5, 6.5, 7.5, 8.5,
                    9.0, 10.0, 11.0, 12.0,
                     13.5, 14.5, 15.5, 16.5 ]
        mat.m = data
        
        if mat.m00 == 1 && mat.m03 == 4 && mat.m10 == 5.5 && mat.m12 == 7.5 && mat.m22 == 11 && mat.m30 == 13.5 && mat.m32 == 15.5 {
            result += "Construct A Matrix: Passed\n"
        } else {
            result += "Construct A Matrix: FAILED\n"
        }
        
        return result
    }
    
    func ConstructAMatrix2x2() -> String {
        var result =  ""
        let data = [ -3.0, 5.0,
                    1, -2 ]
        let mat = Matrix4.matrix2x2(mat: data)
        
        if mat.m00 == -3 && mat.m01 == 5  && mat.m10 == 1 && mat.m11 == -2 {
            result += "Construct A Matrix2x2: Passed\n"
        } else {
            result += "Construct A Matrix2x2: FAILED\n"
        }
        
        return result
    }
    
    func ConstructAMatrix3x3() -> String {
        var result =  ""
        let data = [ -3.0, 5.0, 0.0,
                      1, -2, -7,
                      0, 1, 1 ]
        let mat = Matrix4.matrix3x3(mat: data)
        
        if mat.m00 == -3 && mat.m11 == -2  && mat.m22 == 1 {
            result += "Construct A Matrix3x3: Passed\n"
        } else {
            result += "Construct A Matrix3x3: FAILED\n"
        }
        
        return result
    }
    
    func MatrixEqualityIdenticalMatrices() -> String {
        var result = ""
        let data = [ 1.0, 2, 3, 4,
                     5, 6, 7, 8,
                     9, 8, 7, 6,
                     5, 4, 3, 2 ]
        let mat1 = Matrix4.matrix4x4(mat: data)
        let mat2 = Matrix4.matrix4x4(mat: data)
        
        if mat1 == mat2 {
            result += "Matrix Equality Identical Matrices: Passed\n"
        } else {
            result += "Matrix Equality Identical Matrices: FAILED\n"
        }
        
        return result
    }
    
    func MultiplyTwoMatrices() -> String {
        var result = ""
        let data1 = [ 1.0, 2, 3, 4,
                     5, 6, 7, 8,
                     9, 8, 7, 6,
                     5, 4, 3, 2 ]
        let mat1 = Matrix4.matrix4x4(mat: data1)
        let data2 = [ -2.0, 1, 2, 3,
                     3, 2, 1, -1,
                     4, 3, 6, 5,
                     1, 2, 7, 8 ]
        let mat2 = Matrix4.matrix4x4(mat: data2)
        
        let mat3 = mat1 * mat2
        
        if mat3.m00 == 20 && mat3.m01 == 22 && mat3.m02 == 50 && mat3.m03 == 48 &&
            mat3.m10 == 44 && mat3.m11 == 54 && mat3.m12 == 114 && mat3.m13 == 108 &&
            mat3.m20 == 40 && mat3.m21 == 58 && mat3.m22 == 110 && mat3.m23 == 102 {
            result += "Multiply Two Matrices: Passed\n"
        } else {
            result += "Multiply Two Matrices: FAILED\n"
        }
        
        return result
    }
    
    func MultiplyByScaler() -> String {
        var result = ""
        let data1 = [ 1.0, 2, 3, 4,
                     2, 4, 4, 2,
                     8, 6, 4, 1,
                     0, 0, 0, 1 ]
        let mat1 = Matrix4.matrix4x4(mat: data1)
        let vec = Vector4(x: 1, y: 2, z: 3, w: 1)
        let vec1 = mat1 * vec
        
        if vec1.x == 18 && vec1.y == 24 && vec1.z == 33 && vec1.w == 1 {
            result += "Multiply By Scaler: Passed\n"
        } else {
            result += "Multiply By Scaler: FAILED\n"
        }
        
        return result
    }
    
    func MultiplyByIdentity() -> String {
        var result = "Page 32 - "
        let data1 = [ 0.0, 1, 2, 4,
                     1, 2, 4, 8,
                     2, 4, 8, 16,
                     4, 8, 16, 32 ]
        let mat1 = Matrix4.matrix4x4(mat: data1)
        let identity = Matrix4.identity
        let mat2 = mat1 * identity
        
        if mat1 == mat2 {
            result += "Multiply By Identity: Passed\n"
        } else {
            result += "Multiply By Identity: FAILED\n"
        }
        
        return result
    }
    
    func TransposeMatrix() -> String {
        var result = ""
        let data1 = [ 0.0, 9, 3, 0,
                     9, 8, 0, 8,
                     1, 8, 5, 3,
                     0, 0, 5, 8 ]
        let mat1 = Matrix4.matrix4x4(mat: data1)
        let mat2 = mat1.transposed
        
        if mat2.m02 == 1 && mat2.m12 == 8 && mat2.m13 == 0 && mat2.m20 == 3 && mat2.m21 == 0 &&
            mat2.m23 == 5 && mat2.m30 == 0 && mat2.m31 == 8 && mat2.m32 == 3 {
            result += "Transpose Matrix: Passed\n"
        } else {
            result += "Transpose Matrix: FAILED\n"
        }
        
        return result
    }
    
    func DeterminantOfMatrix2x2() -> String {
        var result = ""
        let data = [1, 5.0,
                    -3, 2]
        let mat2 = Matrix4.matrix2x2(mat: data)
        let det = mat2.determinant
        
        if det == 17 {
            result += "Determinant Of Matrix2x2: Passed\n"
        } else {
            result += "Determinant Of Matrix2x2: FAILED\n"
        }
        
        return result
    }
    
    func SubMatrixOfMatrix3() -> String {
        var result = ""
        let data = [1, 5.0, 0,
                    -3, 2, 7,
                    0, 6, -3]
        let mat1 = Matrix4.matrix3x3(mat: data)
        let subMat = Matrix4.submatrix(mat1)(row: 0, column: 2)
        
        if subMat[0, 0] == -3  && subMat[0, 1] == 2 && subMat[1, 0] == 0 && subMat[1, 1] == 6 {
            result += "SubMatrix Of Matrix3: Passed\n"
        } else {
            result += "SubMatrix Of Matrix3: FAILED\n"
        }
        
        return result
    }
    
    func SubMatrixOfMatrix4() -> String {
        var result = ""
        let data = [-6, 1.0, 1, 6,
                    -8, 5, 8, 6,
                    -1, 0, 8, 2,
                    -7, 1, -1, 1 ]
        let mat1 = Matrix4.matrix4x4(mat: data)
        let subMat = Matrix4.submatrix(mat1)(row: 2, column: 1)
        
        if subMat[0, 0] == -6  && subMat[0, 1] == 1 && subMat[0, 2] == 6 &&
            subMat[1, 0] == -8 &&  subMat[1, 1] == 8 &&  subMat[1, 2] == 6 &&
            subMat[2, 0] == -7 &&  subMat[2, 1] == -1 &&  subMat[2, 2] == 1  {
            result += "SubMatrix Of Matrix4: Passed\n"
        } else {
            result += "SubMatrix Of Matrix4: FAILED\n"
        }
        
        return result
    }
    
    func CalculateMinorOfMatrix3x3() -> String {
        var result = ""
        let data = [3, 5.0, 0,
                    2, -1, -7,
                    6, -1, 5]
        let mat1 = Matrix4.matrix3x3(mat: data)
        let subMat = Matrix4.submatrix(mat1)(row: 1, column: 0)
        let det = subMat.determinant
        
        if det == 25 {
            result += "Calculate Determinant Sub Of Matrix3x3: Passed\n"
        } else {
            result += "Calculate Determinant Sub Of Matrix3x3: FAILED\n"
        }
        
        let minor = Matrix4.minor(mat1)(row: 1, column: 0)
        
        if minor == 25 {
            result += "Calculate Minor Of Matrix3x3: Passed\n"
        } else {
            result += "Calculate Minor Of Matrix3x3: FAILED\n"
        }
        
        return result
    }
    
    func CalculateACofactor() -> String {
        var result = ""
        let data = [3, 5.0, 0,
                    2, -1, -7,
                    6, -1, 5]
        let mat1 = Matrix4.matrix3x3(mat: data)
        let minor = Matrix4.minor(mat1)(row: 0, column: 0)
        if minor == -12 {
            result += "Calculate A Cofactor Minor: Passed\n"
        } else {
            result += "Calculate A Cofactor Minor: FAILED\n"
        }
        
        let cofactor = Matrix4.cofactor(mat1)(row: 0, column: 0)
        if cofactor == -12 {
            result += "Calculate A Cofactor Cofactor: Passed\n"
        } else {
            result += "Calculate A Cofactor Cofactor: FAILED\n"
        }
        
        let minor2 = Matrix4.minor(mat1)(row: 1, column: 0)
        if minor2 == 25 {
            result += "Calculate A Cofactor Minor2: Passed\n"
        } else {
            result += "Calculate A Cofactor Minor2: FAILED\n"
        }
        
        let cofactor2 = Matrix4.cofactor(mat1)(row: 1, column: 0)
        if cofactor2 == -25 {
            result += "Calculate A Cofactor Cofactor2: Passed\n"
        } else {
            result += "Calculate A Cofactor Cofactor2: FAILED\n"
        }
        
        return result
    }
    
    func DeterminantOfMatrix3x3() -> String {
        var result = ""
        let data = [1, 2.0, 6,
                    -5, 8, -4,
                    2, 6, 4]
        let mat1 = Matrix4.matrix3x3(mat: data)
        let cofactor = Matrix4.cofactor(mat1)(row: 0, column: 0)
        if cofactor == 56 {
            result += "Determinant Of Matrix3x3 Cofactor: Passed\n"
        } else {
            result += "Determinant Of Matrix3x3 Cofactor: FAILED\n"
        }
        
        let cofactor2 = Matrix4.cofactor(mat1)(row: 0, column: 1)
        if cofactor2 == 12 {
            result += "Determinant Of Matrix3x3 Cofactor2: Passed\n"
        } else {
            result += "Determinant Of Matrix3x3 Cofactor2: FAILED\n"
        }
        
        let cofactor3 = Matrix4.cofactor(mat1)(row: 0, column: 2)
        if cofactor3 == -46 {
            result += "Determinant Of Matrix3x3 Cofactor3: Passed\n"
        } else {
            result += "Determinant Of Matrix3x3 Cofactor3: FAILED\n"
        }
        
        let det = mat1.determinant
        if det == -196 {
            result += "Determinant Of Matrix3x3 Determinant: Passed\n"
        } else {
            result += "Determinant Of Matrix3x3 Determinant: FAILED\n"
        }
        
        return result
    }
    
    func DeterminantOfMatrix4x4() -> String {
        var result = ""
        let data = [-2, -8.0, 3, 5,
                    -3, 1, 7, 3,
                    1, 2, -9, 6,
                    -6, 7, 7, -9 ]
        let mat1 = Matrix4.matrix4x4(mat: data)
        let cofactor = Matrix4.cofactor(mat1)(row: 0, column: 0)
        if cofactor == 690 {
            result += "Determinant Of Matrix4x4 Cofactor: Passed\n"
        } else {
            result += "Determinant Of Matrix4x4 Cofactor: FAILED\n"
        }
        
        let cofactor2 = Matrix4.cofactor(mat1)(row: 0, column: 1)
        if cofactor2 == 447 {
            result += "Determinant Of Matrix4x4 Cofactor2: Passed\n"
        } else {
            result += "Determinant Of Matrix4x4 Cofactor2: FAILED\n"
        }
        
        let cofactor3 = Matrix4.cofactor(mat1)(row: 0, column: 2)
        if cofactor3 == 210 {
            result += "Determinant Of Matrix4x4 Cofactor3: Passed\n"
        } else {
            result += "Determinant Of Matrix4x4 Cofactor3: FAILED\n"
        }
        
        let cofactor4 = Matrix4.cofactor(mat1)(row: 0, column: 3)
        if cofactor4 == 51 {
            result += "Determinant Of Matrix4x4 Cofactor4: Passed\n"
        } else {
            result += "Determinant Of Matrix4x4 Cofactor4: FAILED\n"
        }
        
        let det = mat1.determinant
        if det == -4071 {
            result += "Determinant Of Matrix4x4 Determinant: Passed\n"
        } else {
            result += "Determinant Of Matrix4x4 Determinant: FAILED\n"
        }
        
        return result
    }
    
    func TestInvertibleMatrix() -> String {
        var result = ""
        let data = [6.0, 4.0, 4, 4,
                    5, 5, 7, 6,
                    4, -9, 3, -7,
                    9, 1, 7, -6 ]
        let mat1 = Matrix4.matrix4x4(mat: data)
        let det = mat1.determinant
        
        if det != 0 {
            result += "Test Invertible Matrix1 : TRUE\n"
        } else if(det == 0) {
            result += "Test Invertible Matrix1 : FALSE\n"
        }
        
        let data2 = [4, 2.0, -2, -3,
                    9, 6, 2, 6,
                    0, -5, 1, -5,
                    0, 0, 0, 0 ]
        let mat2 = Matrix4.matrix4x4(mat: data2)
        let det2 = mat2.determinant
        if det2 != 0 {
            result += "Test Invertible Matrix2 : TRUE\n"
        } else if(det2 == 0) {
            result += "Test Invertible Matrix2 : FALSE\n"
        }
        
        return result
    }
    
    func CalculateInverseMatrix4() -> String {
        var result = ""
        let data = [-5.0, 2.0, 6, -8,
                    1, -5, 1, 8,
                    7, 7, -6, -7,
                    1, -3, 7, 4 ]
        let mat1 = Matrix4.matrix4x4(mat: data)
        let inverse = mat1.inverse
        let det = mat1.determinant
        if det == 532 {
            result += "Calculate Inverse Matrix4 : Passed\n"
        } else {
            result += "Calculate Inverse Matrix4 : FAILED\n"
        }
        
        let cofactor = Matrix4.cofactor(mat1)(row: 2, column: 3)
        if cofactor == -160 {
            result += "Calculate Cofactor Matrix4 : Passed\n"
        } else {
            result += "Calculate Cofactor Matrix4 : FAILED\n"
        }
        
        let B32 = inverse?.m32
        if B32!.roughlyEqual(cofactor / det) {
            result += "Calculate B[3][2] Matrix4 : Passed\n"
        } else {
            result += "Calculate B[3][2] Matrix4 : Passed\n"
        }
        
        let cofactor2 = Matrix4.cofactor(mat1)(row: 3, column: 2)
        if cofactor2 == 105 {
            result += "Calculate Cofactor2 Matrix4 : Passed\n"
        } else {
            result += "Calculate Cofactor2 Matrix4 : FAILED\n"
        }
        
        let B23 = inverse?.m23
        if B23!.roughlyEqual(cofactor2 / det) {
            result += "Calculate B[2][3] Matrix4 : Passed\n"
        } else {
            result += "Calculate B[2][3] Matrix4 : Passed\n"
        }
        
        let temp = inverse?.m.map( { String($0) })
        result += temp!.joined(separator: ",").replacingOccurrences(of: ",", with:  "\n")
        
        return result
    }
    
    func MultiplyingProductByInverse() -> String {
        var result = "Page 41 - "
        let data1 = [3.0, -9.0, 7, 3,
                    3, -8, 2, -9,
                    4, 4, 4, 1,
                    -6, 5, -1, 1 ]
        let mat1 = Matrix4.matrix4x4(mat: data1)
        let data2 = [8.0, 2.0, 2, 2,
                    3, -1, 7, 0,
                    7, 0, 5, 4,
                    6, -2, 0, 5 ]
        let mat2 = Matrix4.matrix4x4(mat: data2)
        
        let mat3 = mat1 * mat2
        let invmat2 = mat2.inverse!
        let mat4 = mat3 * invmat2
        
        if mat4 == mat1 {
            result += "Multiplying Produc tBy Inverse : Passed\n"
        } else {
            result += "Multiplying Produc tBy Inverse : FAILED\n"
        }
        
        return result
    }
    
}
