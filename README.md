spring-social-roo
=================
Spring Social Sample built on top of a Roo-created project

This is just the beginning of an effort to Spring Social-ize a project
that was originally created with Roo.

Before adding the Spring Social pieces, I had only issued the following
commands into the Roo shell:

    project --topLevelPackage org.springframework.social.roo --projectName spring-social-roo
    web mvc setup
    security setup
    
I then made the following changes:

1. Added an empty SocialConfig.java as a sanity check (Roo's established component-scanning should pick it up).
2. Added ConnectController to webmvc-config.xml.
3. Added ConnectController's dependencies to SocialConfig.java (mostly copied from Spring Social Showcase). Also created social.properties to hold Facebook key/secret
4. Added Spring Social dependencies in pom.xml
5. Created connection table in DB (via brute-force setting of connectInitSqls property for now).
6. Added connection views under /WEB-INF/views/connect. Had to also change tiles definitions to align with Roo's Tiles settings. Also copied Facebook button imagery to images folder.
7. Created a new application at Facebook so that the site URL would match this project. Copied new key/secret into social.properties.
8. Added facebook.icon and facebook.displayName to messages.properties.
9. Added &lt;intercept-url&gt; to require that the user be logged in before connecting to FB.
10. Added FacebookProfileController and supporting views.
11. Added ProviderSignInController to webmvc-config.xml
12. Added SimpleSignInAdapter and SignInUtils to new org.springframework.social.roo.signin package.
13. Added Facebook Sign-in button to login.jspx (with hardcoded context path for now).

