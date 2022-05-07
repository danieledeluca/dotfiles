module.exports = {
    env: {
        browser: true,
        commonjs: true,
        es2021: true,
        jquery: true,
    },
    extends: 'airbnb-base',
    parserOptions: {
        ecmaVersion: 12,
    },
    ignorePatterns: ['vendor/**/*.js', '*.min.js'],
    rules: {
        indent: [
            'error',
            4,
            {
                SwitchCase: 1,
            },
        ],
        strict: 'off',
        'func-names': 'off',
        'prefer-arrow-callback': 'off',
        'no-var': 'off',
        quotes: [
            'error',
            'single',
            {
                allowTemplateLiterals: true,
            },
        ],
        'max-len': [
            'error',
            {
                code: 120,
            },
        ],
    },
};
