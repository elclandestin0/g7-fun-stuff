import * as React from 'react';
import { Canvas } from '@react-three/fiber';

declare global {
  namespace JSX {
    interface IntrinsicElements {
      group: React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
      mesh: React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
      boxGeometry: React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
      meshStandardMaterial: React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
      ambientLight: React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
      directionalLight: React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
    }
  }
} 