.class public abstract Lcom/google/appinventor/components/runtime/MakeroidNonvisibleExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNonvisibleExtension;->form:Lcom/google/appinventor/components/runtime/Form;

    return-void
.end method


# virtual methods
.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNonvisibleExtension;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method
