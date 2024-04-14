.class public final Lcom/google/appinventor/components/runtime/SpaceView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/layout/space/"
    iconName = "images/space.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 27
    new-instance v0, Landroid/widget/Space;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpaceView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Space;

    .line 28
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpaceView;->getView()Landroid/widget/Space;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/widget/Space;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpaceView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Space;

    return-object v0
.end method
