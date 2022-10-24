function withOpacityValue(variable) {
  return ({ opacityValue }) => {
    if (opacityValue === undefined) {
      return `rgb(var(${variable}))`;
    }
    return `rgb(var(${variable}) / ${opacityValue})`;
  };
}

module.exports = {
  darkMode: 'class',
  content: ['public/index.html', 'src/*.{js, jsx}', 'src/**/*.{js, jsx}'],
  theme: {
    extend: {
      colors: {
        transparent: 'var(--color-primary-transparent)',
        current: 'currentColor',
        white: '#ffffff',
        black: '#000000',
        klor: {
          50: withOpacityValue('--color-primary-50'),
          100: withOpacityValue('--color-primary-100'),
          200: withOpacityValue('--color-primary-200'),
          300: withOpacityValue('--color-primary-300'),
          400: withOpacityValue('--color-primary-400'),
          500: withOpacityValue('--color-primary-500'),
          600: withOpacityValue('--color-primary-600'),
          700: withOpacityValue('--color-primary-700'),
          800: withOpacityValue('--color-primary-800'),
          900: withOpacityValue('--color-primary-900'),
        },
      },
      fontFamily: {
        nav: ['Oswald'],
        brand: ['Pacifico'],
        title: ['Merriweather'],
        general: ['Lato'],
      },
      textColor: {
        transparent: 'var(--color-primary-transparent)',
        50: withOpacityValue('--color-primary-50'),
        100: withOpacityValue('--color-primary-100'),
        200: withOpacityValue('--color-primary-200'),
        300: withOpacityValue('--color-primary-300'),
        400: withOpacityValue('--color-primary-400'),
        500: withOpacityValue('--color-primary-500'),
        600: withOpacityValue('--color-primary-600'),
        700: withOpacityValue('--color-primary-700'),
        800: withOpacityValue('--color-primary-800'),
        900: withOpacityValue('--color-primary-900'),
      },
      backgroundColor: {
        transparent: 'var(--color-primary-transparent)',
        50: withOpacityValue('--color-primary-50'),
        100: withOpacityValue('--color-primary-100'),
        200: withOpacityValue('--color-primary-200'),
        300: withOpacityValue('--color-primary-300'),
        400: withOpacityValue('--color-primary-400'),
        500: withOpacityValue('--color-primary-500'),
        600: withOpacityValue('--color-primary-600'),
        700: withOpacityValue('--color-primary-700'),
        800: withOpacityValue('--color-primary-800'),
        900: withOpacityValue('--color-primary-900'),
      },
      ringColor: {
        transparent: 'var(--color-primary-transparent)',
        50: withOpacityValue('--color-primary-50'),
        100: withOpacityValue('--color-primary-100'),
        200: withOpacityValue('--color-primary-200'),
        300: withOpacityValue('--color-primary-300'),
        400: withOpacityValue('--color-primary-400'),
        500: withOpacityValue('--color-primary-500'),
        600: withOpacityValue('--color-primary-600'),
        700: withOpacityValue('--color-primary-700'),
        800: withOpacityValue('--color-primary-800'),
        900: withOpacityValue('--color-primary-900'),
      },
      borderColor: {
        transparent: 'var(--color-primary-transparent)',
        50: withOpacityValue('--color-primary-50'),
        100: withOpacityValue('--color-primary-100'),
        200: withOpacityValue('--color-primary-200'),
        300: withOpacityValue('--color-primary-300'),
        400: withOpacityValue('--color-primary-400'),
        500: withOpacityValue('--color-primary-500'),
        600: withOpacityValue('--color-primary-600'),
        700: withOpacityValue('--color-primary-700'),
        800: withOpacityValue('--color-primary-800'),
        900: withOpacityValue('--color-primary-900'),
      },
      boxShadowColor: {
        transparent: 'var(--color-primary-transparent)',
        50: withOpacityValue('--color-primary-50'),
        100: withOpacityValue('--color-primary-100'),
        200: withOpacityValue('--color-primary-200'),
        300: withOpacityValue('--color-primary-300'),
        400: withOpacityValue('--color-primary-400'),
        500: withOpacityValue('--color-primary-500'),
        600: withOpacityValue('--color-primary-600'),
        700: withOpacityValue('--color-primary-700'),
        800: withOpacityValue('--color-primary-800'),
        900: withOpacityValue('--color-primary-900'),
      },
      keyframes: {
        spin_infinity: {
          '0%': {
            'stroke-dasharray': '1, 347',
            'stroke-dashoffset': 75,
          },
          '25%, 75%': {
            'stroke-dasharray': '17, 330',
          },
          '50%': {
            'stroke-dasharray': '1, 347',
          },
          '100%': {
            'stroke-dasharray': '1, 347',
            'stroke-dashoffset': '423',
          },
        },
      },
      animation: {
        loading_spin_infinity: 'spin_infinity 1.4s linear infinite',
      },
    },
  },
  variants: {},
  plugins: [require('@tailwindcss/line-clamp'), require('@tailwindcss/forms')],
};
