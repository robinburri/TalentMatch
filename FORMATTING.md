# 🎨 TalentMatch Project Formatting Guide

This project has comprehensive formatting setup for both frontend (React/TypeScript) and backend (Java) code, plus configuration files.

## 🚀 Quick Start

### Format Everything at Once

```bash
# From the project root directory
./format-project.sh
```

### Format Individual Parts

```bash
# Frontend only (React/TypeScript, CSS, JSON)
cd frontend
npm run format

# Backend only (Java)
cd backend
mvn spotless:apply
```

## 📋 What Gets Formatted

### Frontend (Prettier + ESLint)

-   ✅ **TypeScript/JavaScript**: `.ts`, `.tsx`, `.js`, `.jsx`
-   ✅ **Styles**: `.css`, `.scss`
-   ✅ **Configuration**: `.json`, `.yaml`, `.yml`
-   ✅ **HTML**: `.html`
-   ✅ **Markdown**: `.md`

### Backend (Maven Spotless)

-   ✅ **Java**: `.java` files with import organization
-   ✅ **Indentation**: 2 spaces, no tabs
-   ✅ **Trailing whitespace**: Removed
-   ✅ **Line endings**: Ensured

### Root Configuration

-   ✅ **Docker Compose**: `docker-compose*.yml`
-   ✅ **Package files**: `package.json`, `tsconfig.json`

## 🔧 Configuration Details

### Frontend Configuration

#### Prettier (`.prettierrc`)

```json
{
    "semi": false,
    "trailingComma": "es5",
    "singleQuote": true,
    "printWidth": 100,
    "tabWidth": 2,
    "useTabs": false,
    "jsxSingleQuote": true,
    "bracketSpacing": true,
    "bracketSameLine": false,
    "arrowParens": "avoid",
    "endOfLine": "lf"
}
```

#### ESLint Integration

-   **Strict TypeScript**: No `any` types, proper type checking
-   **React best practices**: Hooks rules, JSX optimization
-   **Import management**: Auto-sorting and organization
-   **Accessibility**: JSX a11y rules
-   **Auto-fix**: Runs automatically with formatting

### Backend Configuration

#### Maven Spotless (`pom.xml`)

```xml
<plugin>
  <groupId>com.diffplug.spotless</groupId>
  <artifactId>spotless-maven-plugin</artifactId>
  <configuration>
    <java>
      <removeUnusedImports/>
      <importOrder>
        <order>java|javax,org,com,</order>
      </importOrder>
      <indent>
        <spaces>true</spaces>
        <spacesPerTab>2</spacesPerTab>
      </indent>
      <trimTrailingWhitespace/>
      <endWithNewline/>
    </java>
  </configuration>
</plugin>
```

## 📝 Available Scripts

### Frontend Scripts

```bash
npm run format          # Format all files with Prettier
npm run format:check    # Check if files need formatting
npm run format:fix      # Format with Prettier + fix ESLint issues
npm run lint            # Check ESLint issues
npm run lint:fix        # Auto-fix ESLint issues
npm run lint:check      # Strict linting (no warnings allowed)
```

### Backend Scripts

```bash
mvn spotless:apply      # Format Java files
mvn spotless:check      # Check if files need formatting
```

## 🔄 VS Code Integration

With the Prettier extension installed, your VS Code is configured to:

-   ✅ **Format on save**: Automatically formats when you save files
-   ✅ **Format on paste**: Formats pasted content
-   ✅ **ESLint integration**: Shows linting errors inline
-   ✅ **Auto-organize imports**: Removes unused, sorts imports
-   ✅ **Java formatting**: Uses RedHat Java extension for Java files

### Required VS Code Extensions

-   **Prettier - Code formatter** (`esbenp.prettier-vscode`)
-   **ESLint** (`dbaeumer.vscode-eslint`)
-   **Extension Pack for Java** (for Java formatting)

## 🎯 Formatting Rules Summary

### Code Style

-   **Indentation**: 2 spaces (no tabs)
-   **Quotes**: Single quotes for JS/TS, JSX
-   **Semicolons**: None (prettier removes them)
-   **Line width**: 100 characters
-   **Trailing commas**: ES5 compatible

### Import Organization

-   **React imports**: First (special positioning)
-   **External libraries**: After React
-   **Internal modules**: After external
-   **Relative imports**: Last
-   **Unused imports**: Automatically removed

### Java Specifics

-   **Import order**: `java|javax`, `org`, `com`, others
-   **Unused imports**: Removed
-   **Trailing whitespace**: Removed
-   **File endings**: Ensured newline at end

## 🚨 Common Issues & Solutions

### "Prettier not found" error

```bash
cd frontend
npm install
```

### "Maven wrapper not executable"

Use direct Maven instead:

```bash
mvn spotless:apply
```

### VS Code not formatting on save

1. Install Prettier extension
2. Check `.vscode/settings.json` is configured
3. Ensure file type is supported

### ESLint conflicts with Prettier

The configuration is set up to work together - Prettier handles formatting, ESLint handles code quality.

## 📚 Additional Resources

-   [Prettier Documentation](https://prettier.io/docs/en/)
-   [ESLint Documentation](https://eslint.org/docs/latest/)
-   [Spotless Maven Plugin](https://github.com/diffplug/spotless/tree/main/plugin-maven)
-   [VS Code Prettier Extension](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
