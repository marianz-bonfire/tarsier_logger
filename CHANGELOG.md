## 1.0.1
+ Added
    + Added log icon
    + Fixed some lint issue for pub requirements
## 1.0.0
+ Added
    + Initial release of `tarsier_logger`.
    + Instance-Based Logging:
        + Logs with dynamic hyphen padding.
        + ANSI color-coded messages for informational, success, warning, and error logs.
        + Customizable maxLength for log formatting.
    + Static Logging:
        + Added `TarsierLogger` class for convenient static method usage.
        + Supports the same color-coded and dynamically formatted log messages.
    + Custom Colors:
        + Predefined colors (`green`, `red`, `blue`, `yellow`, `reset`) for consistent log styling.
    + Comprehensive examples for instance and static usage.

- Future Improvements
    + Add support for file-based logging.
    + Provide options for timestamps in logs.
    + Extend customization for log message prefixes