.class public interface abstract annotation Lcom/google/appinventor/components/annotations/UsesQueries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/UsesQueries;
        intents = {}
        packageNames = {}
        providers = {}
    .end subannotation
.end annotation


# virtual methods
.method public abstract intents()[Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
.end method

.method public abstract packageNames()[Ljava/lang/String;
.end method

.method public abstract providers()[Lcom/google/appinventor/components/annotations/androidmanifest/ProviderElement;
.end method
