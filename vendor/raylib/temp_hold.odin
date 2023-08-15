	//------------------------------------------------------------------------------------
	// Math Library and Vector Manipulation (Module: raymath)
	//------------------------------------------------------------------------------------
  
  // DEFINITIONS:
  Float3 :: distinct [3]f32
  Float16 :: distinct [16]f32

  // Utils Math:
  Clamp       :: proc(value: f32, min: f32, max: f32) -> f32 ---                // Function specifiers definition Defines and Macros Get float vector for Matrix Get float vector for Vector3 Types and Structures Definition Vector2 type Vector3 type Vector4 type Quaternion type Matrix type (OpenGL style 4x4 - right handed, column major) NOTE: Helper types to be used instead of array return types for *ToFloat functions Clamp float value
  Lerp        :: proc(start: f32, end: f32, amount: f32) -> f32 ---             // Calculate linear interpolation between two floats
  Normalize   :: proc(value: f32, start: f32, end: f32) -> f32 ---              // Normalize input value within input range
  Remap       :: proc(value: f32, inputStart: f32, inputEnd: f32, 
                      outputStart: f32, outputEnd: f32) -> f32 ---              // Remap input value within input range to output range
  Wrap        :: proc(value: f32, min: f32, max: f32) -> f32 ---                // Wrap input value from min to max
  FloatEquals :: proc(x: f32, y: f32) -> c.int ---                              // Check whether two given floats are almost equal

  // Vector2 math
  Vector2Zero           :: proc() -> Vector2 ---                                               // Vector with components value 0.0f
  Vector2One            :: proc() -> Vector2 ---                                               // Vector with components value 1.0f
  Vector2Add            :: proc(v1: Vector2, v2: Vector2) -> Vector2 ---                       // Add two vectors (v1 + v2)
  Vector2AddValue       :: proc(v: Vector2, add: f32) -> Vector2 ---                           // Add vector and float value
  Vector2Subtract       :: proc(v1: Vector2, v2: Vector2) -> Vector2 ---                       // Subtract two vectors (v1 - v2)
  Vector2SubtractValue  :: proc(v: Vector2, sub: f32) -> Vector2 ---                           // Subtract vector by float value
  Vector2Length         :: proc(v: Vector2) -> f32 ---                                         // Calculate vector length
  Vector2LengthSqr      :: proc(v: Vector2) -> f32 ---                                         // Calculate vector square length
  Vector2DotProduct     :: proc(v1: Vector2, v2: Vector2) -> f32 ---                           // Calculate two vectors dot product
  Vector2Distance       :: proc(v1: Vector2, v2: Vector2) -> f32 ---                           // Calculate distance between two vectors
  Vector2DistanceSqr    :: proc(v1: Vector2, v2: Vector2) -> f32 ---                           // Calculate square distance between two vectors
  Vector2Angle          :: proc(v1: Vector2, v2: Vector2) -> f32 ---                           // Calculate angle from two vectors
  Vector2Scale          :: proc(v: Vector2, scale: f32) -> Vector2 ---                         // Scale vector (multiply by value)
  Vector2Multiply       :: proc(v1: Vector2, v2: Vector2) -> Vector2 ---                       // Multiply vector by vector
  Vector2Negate         :: proc(v: Vector2 ) -> Vector2 ---                                    // Negate vector
  Vector2Divide         :: proc(v1: Vector2, v2: Vector2) -> Vector2 ---                       // Divide vector by vector
  Vector2Normalize      :: proc(v: Vector2 ) -> Vector2 ---                                    // Normalize provided vector
  Vector2Transform      :: proc(v: Vector2, mat: Matrix) -> Vector2 ---                        // Transforms a Vector2 by a given Matrix
  Vector2Lerp           :: proc(v1: Vector2, v2: Vector2, amount: f32) -> Vector2 ---          // Calculate linear interpolation between two vectors
  Vector2Reflect        :: proc(v: Vector2 , normal: Vector2 ) -> Vector2 ---                  // Calculate reflected vector to normal
  Vector2Rotate         :: proc(v: Vector2 , angle: f32) -> Vector2 ---                        // Rotate vector by angle
  Vector2MoveTowards    :: proc(v: Vector2 , target: Vector2, maxDistance: f32) -> Vector2 --- // Move Vector towards target
  Vector2Invert         :: proc(v: Vector2 ) -> Vector2 ---                                    // Invert the given vector
  Vector2Clamp          :: proc(v: Vector2 , min: Vector2 , max: Vector2 ) -> Vector2 ---      // Clamp the components of the vector between min and max values specified by the given vectors
  Vector2ClampValue     :: proc(v: Vector2 , min: f32, max: f32) -> Vector2 ---                // Clamp the magnitude of the vector between two min and max values
  Vector2Equals         :: proc(p: Vector2, q: Vector2) -> c.int ---                           // Check whether two given vectors are almost equal

  // Vector3 math
  Vector3Zero               :: proc() -> Vector3 ---                                                    // Vector with components value 0.0f
  Vector3One                :: proc() -> Vector3 ---                                                    // Vector with components value 1.0f
  Vector3Add                :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Add two vectors
  Vector3AddValue           :: proc(v: Vector3, add: f32) -> Vector3 ---                                // Add vector and float value
  Vector3Subtract           :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Subtract two vectors
  Vector3SubtractValue      :: proc(v: Vector3, sub: f32) -> Vector3 ---                                // Subtract vector by float value
  Vector3Scale              :: proc(v: Vector3, scalar: f32) -> Vector3 ---                             // Multiply vector by scalar
  Vector3Multiply           :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Multiply vector by vector
  Vector3CrossProduct       :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Calculate two vectors cross product
  Vector3Perpendicular      :: proc(v: Vector3) -> Vector3 ---                                          // Calculate one vector perpendicular vector
  Vector3Length             :: proc(v: Vector3) -> f32 ---                                              // Calculate vector length // TODO: CONST VECTOR CHECK 
  Vector3LengthSqr          :: proc(v: Vector3) -> f32 ---                                              // Calculate vector square length // TODO: CONST VECTOR CHECK
  Vector3DotProduct         :: proc(v1: Vector3, v2: Vector3) -> f32 ---                                // Calculate two vectors dot product
  Vector3Distance           :: proc(v1: Vector3, v2: Vector3) -> f32 ---                                // Calculate distance between two vectors
  Vector3DistanceSqr        :: proc(v1: Vector3, v2: Vector3) -> f32 ---                                // Calculate square distance between two vectors
  Vector3Angle              :: proc(v1: Vector3, v2: Vector3) -> f32 ---                                // Calculate angle between two vectors
  Vector3Negate             :: proc(v: Vector3) -> Vector3 ---                                          // Negate provided vector (invert direction)
  Vector3Divide             :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Divide vector by vector
  Vector3Normalize          :: proc(v: Vector3) -> Vector3 ---                                          // Normalize provided vector
  Vector3OrthoNormalize     :: proc(v1: ^Vector3, v2: ^Vector3) ---                                     // Orthonormalize provided vectors Makes vectors normalized and orthogonal to each other Gram-Schmidt function implementation
  Vector3Transform          :: proc(v: Vector3, mat: Matrix) -> Vector3 ---                             // Transforms a Vector3 by a given Matrix
  Vector3RotateByQuaternion :: proc(v: Vector3, q: Quaternion ) -> Vector3 ---                          // Transform a vector by quaternion rotation
  Vector3RotateByAxisAngle  :: proc(v: Vector3, axis: Vector3 , angle: f32) -> Vector3 ---              // Rotates a vector around an axis
  Vector3Lerp               :: proc(v1: Vector3, v2: Vector3, amount: f32) -> Vector3 ---               // Calculate linear interpolation between two vectors
  Vector3Reflect            :: proc(v: Vector3, normal: Vector3) -> Vector3 ---                         // Calculate reflected vector to normal
  Vector3Min                :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Get min value for each pair of components
  Vector3Max                :: proc(v1: Vector3, v2: Vector3) -> Vector3 ---                            // Get max value for each pair of components
  Vector3Barycenter         :: proc(p: Vector3, a: Vector3, b: Vector3, c: Vector3 ) -> Vector3 ---     // Compute barycenter coordinates (u, v, w) for point p with respect to triangle (a, b, c) NOTE: Assumes P is on the plane of the triangle
  Vector3Unproject          :: proc(source: Vector3, projection: Matrix , view: Matrix ) -> Vector3 --- // Projects a Vector3 from screen space into object space NOTE: We are avoiding calling other raymath functions despite available
  Vector3ToFloatV           :: proc(v: Vector3) -> Float3 ---                                           // Get Vector3 as float array
  Vector3Invert             :: proc(v: Vector3 ) -> Vector3 ---                                         // Invert the given vector
  Vector3Clamp              :: proc(v: Vector3, min: Vector3, max: Vector3) -> Vector3 ---              // Clamp the components of the vector between min and max values specified by the given vectors
  Vector3ClampValue         :: proc(v: Vector3, min: f32, max: f32) -> Vector3 ---                      // Clamp the magnitude of the vector between two values
  Vector3Equals             :: proc(p: Vector3, q: Vector3) -> c.int ---                                // Check whether two given vectors are almost equal
  Vector3Refract            :: proc(v: Vector3, n: Vector3, r: f32) -> Vector3 ---                      // Compute the direction of a refracted ray where v specifies the normalized direction of the incoming ray, n specifies the normalized normal vector of the interface of two optical media, and r specifies the ratio of the refractive index of the medium from where the ray comes to the refractive index of the medium on the other side of the surface

  // Matrix math
  MatrixDeterminant :: proc(mat: Matrix) -> f32 ---                                    // Compute matrix determinant
  MatrixTrace       :: proc(mat: Matrix) -> f32 ---                                    // Get the trace of the matrix (sum of the values along the diagonal)
  MatrixTranspose   :: proc(mat: Matrix) -> Matrix ---                                 // Transposes provided matrix
  MatrixInvert      :: proc(mat: Matrix) -> Matrix ---                                 // Invert provided matrix
  MatrixIdentity    :: proc() -> Matrix ---                                            // Get identity matrix
  MatrixAdd         :: proc(left: Matrix, right: Matrix) -> Matrix ---                 // Add two matrices
  MatrixSubtract    :: proc(left: Matrix, right: Matrix) -> Matrix ---                 // Subtract two matrices (left - right)
  MatrixMultiply    :: proc(left: Matrix, right: Matrix) -> Matrix ---                 // Get two matrix multiplication NOTE: When multiplying matrices... the order matters!
  MatrixTranslate   :: proc(x: f32, y: f32, z: f32) -> Matrix ---                      // Get translation matrix
  MatrixRotate      :: proc(axis: Vector3, angle: f32) -> Matrix ---                   // Create rotation matrix from axis and angle NOTE: Angle should be provided in radians
  MatrixRotateX     :: proc(angle: f32) -> Matrix ---                                  // Get x-rotation matrix NOTE: Angle must be provided in radians
  MatrixRotateY     :: proc(angle: f32) -> Matrix ---                                  // Get y-rotation matrix NOTE: Angle must be provided in radians
  MatrixRotateZ     :: proc(angle: f32) -> Matrix ---                                  // Get z-rotation matrix NOTE: Angle must be provided in radians
  MatrixRotateXYZ   :: proc(angle: Vector3) -> Matrix ---                              // Get xyz-rotation matrix NOTE: Angle must be provided in radians
  MatrixRotateZYX   :: proc(angle: Vector3) -> Matrix ---                              // Get zyx-rotation matrix NOTE: Angle must be provided in radians
  MatrixScale       :: proc(x: f32, y: f32, z: f32) -> Matrix ---                      // Get scaling matrix
  MatrixFrustum     :: proc(left: f64, right: f64, bottom: f64, top: f64, near: f64, far: f64) -> Matrix --- // Get perspective projection matrix
  MatrixPerspective :: proc(fovy: f64, aspect: f64, near: f64, far: f64) -> Matrix --- // Get perspective projection matrix NOTE: Fovy angle must be provided in radians
  MatrixOrtho       :: proc(left: f64, right: f64, bottom: f64, top: f64, near: f64, far: f64) -> Matrix --- // Get orthographic projection matrix
  MatrixLookAt      :: proc(eye: Vector3, target: Vector3, up: Vector3) -> Matrix ---  // Get camera look-at matrix (view matrix)
  MatrixToFloatV    :: proc(mat: Matrix) -> Float16 ---                                // Get float array of matrix data

  // Quaternion math
  QuaternionAdd                  :: proc(q1: Quaternion, q2: Quaternion) -> Quaternion ---              // Add two quaternions
  QuaternionAddValue             :: proc(q: Quaternion, add: f32) -> Quaternion ---                     // Add quaternion and float value
  QuaternionSubtract             :: proc(q1: Quaternion, q2: Quaternion) -> Quaternion ---              // Subtract two quaternions
  QuaternionSubtractValue        :: proc(q: Quaternion, sub: f32) -> Quaternion ---                     // Subtract quaternion and float value
  QuaternionIdentity             :: proc() -> Quaternion ---                                            // Get identity quaternion
  QuaternionLength               :: proc(q: Quaternion) -> f32 ---                                      // Computes the length of a quaternion
  QuaternionNormalize            :: proc(q: Quaternion) -> Quaternion ---                               // Normalize provided quaternion
  QuaternionInvert               :: proc(q: Quaternion) -> Quaternion ---                               // Invert provided quaternion
  QuaternionMultiply             :: proc(q1: Quaternion, q2: Quaternion) -> Quaternion ---              // Calculate two quaternion multiplication
  QuaternionScale                :: proc(q: Quaternion, mul: f32) -> Quaternion ---                     // Scale quaternion by float value
  QuaternionDivide               :: proc(q1: Quaternion, q2: Quaternion) -> Quaternion ---              // Divide two quaternions
  QuaternionLerp                 :: proc(q1: Quaternion, q2: Quaternion, amount: f32) -> Quaternion --- // Calculate linear interpolation between two quaternions
  QuaternionNlerp                :: proc(q1: Quaternion, q2: Quaternion, amount: f32) -> Quaternion --- // Calculate slerp-optimized interpolation between two quaternions
  QuaternionSlerp                :: proc(q1: Quaternion, q2: Quaternion, amount: f32) -> Quaternion --- // Calculates spherical linear interpolation between two quaternions
  QuaternionFromVector3ToVector3 :: proc(from: Vector3, to: Vector3) -> Quaternion ---                  // Calculate quaternion based on the rotation from one vector to another
  QuaternionFromMatrix           :: proc(mat: Matrix) -> Quaternion ---                                 // Get a quaternion for a given rotation matrix
  QuaternionToMatrix             :: proc(q: Quaternion) -> Matrix ---                                   // Get a matrix for a given quaternion
  QuaternionFromAxisAngle        :: proc(axis: Vector3, angle: f32) -> Quaternion ---                   // Get rotation quaternion for an angle and axis NOTE: Angle must be provided in radians
  QuaternionToAxisAngle          :: proc(q: Quaternion, outAxis: ^Vector3, outAngle: ^f32) ---          // Get the rotation angle and axis for a given quaternion
  QuaternionFromEuler            :: proc(pitch: f32, yaw: f32, roll: f32) -> Quaternion ---             // Get the quaternion equivalent to Euler angles NOTE: Rotation order is ZYX
  QuaternionToEuler              :: proc(q: Quaternion) -> Vector3 ---                                  // Get the Euler angles equivalent to quaternion (roll, pitch, yaw) NOTE: Angles are returned in a Vector3 struct in radians
  QuaternionTransform            :: proc(q: Quaternion, mat: Matrix) -> Quaternion ---                  // Transform a quaternion given a transformation matrix
  QuaternionEquals               :: proc(p: Quaternion, q: Quaternion) -> c.int ---                     // Check whether two given quaternions are almost equal
