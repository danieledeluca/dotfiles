module.exports = {
    extends: 'stylelint-config-sass-guidelines',
    rules: {
        indentation: 4,
        'selector-max-compound-selectors': null,
        'selector-class-pattern': null,
        'selector-no-qualifying-type': [
            true,
            {
                ignore: ['attribute', 'class'],
            },
        ],
        'max-nesting-depth': [
            2,
            {
                ignore: ['pseudo-classes'],
                ignoreAtRules: ['include'],
            },
        ],
        'order/properties-alphabetical-order': null,
        'color-hex-length': 'long',
        'declaration-no-important': true,
        'declaration-property-value-disallowed-list': null,
        'function-parentheses-space-inside': 'never-single-line',
        'scss/at-extend-no-missing-placeholder': null,
    },
    ignoreFiles: ['**/*.min.css'],
};
