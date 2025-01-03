import { OrbitControls } from '@react-three/drei'
import { Canvas } from '@react-three/fiber'
import { createRoot } from 'react-dom/client'

function VoxelRenderer() {
    const voxelData = getCrossVoxelData() // Assuming this function fetches your voxel data

    return (
        <div id="canvas-container">
            <Canvas>
                <mesh>
                    {voxelData.map((voxel, index) => (
                        <mesh key={index} position={voxel.position}>
                            <boxGeometry args={[voxel.size, voxel.size, voxel.size]} />
                            <meshStandardMaterial />
                        </mesh>
                    ))}
                    <ambientLight intensity={0.6} />
                </mesh>
                <OrbitControls />
            </Canvas>
        </div>
    )
}
export default VoxelRenderer

function getCrossVoxelData() {
    const size = 1
    return [
        { size, position: [0, 0, 0] }, // Center voxel
        { size, position: [1, 0, 0] }, // Right voxel
        { size, position: [-1, 0, 0] }, // Left voxel
        { size, position: [0, 1, 0] }, // Top voxel
        { size, position: [0, -1, 0] }, // Bottom voxel
        { size, position: [0, -2, 0] }, // Bottom voxel
    ];
}
createRoot(document.getElementById('root')).render(<VoxelRenderer />)