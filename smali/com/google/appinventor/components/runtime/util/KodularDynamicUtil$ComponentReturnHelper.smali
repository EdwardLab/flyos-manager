.class public Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentReturnHelper"
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    return-void
.end method
