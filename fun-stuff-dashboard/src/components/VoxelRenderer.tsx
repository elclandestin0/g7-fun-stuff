import { OrbitControls } from '@react-three/drei'
import { Canvas } from '@react-three/fiber'
import { createRoot } from 'react-dom/client'

function VoxelRenderer() {

    return (
        <div id="canvas-container">
            <Canvas>
                <mesh> 
                    <boxGeometry  />
                    <meshStandardMaterial />
                </mesh>
                <OrbitControls />
            </Canvas>
        </div>
    )
}
export default VoxelRenderer

createRoot(document.getElementById('root')).render(<VoxelRenderer />)