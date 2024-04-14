.class final Lcom/google/appinventor/components/runtime/Image$1;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Image;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p1, 0x1

    return p1
.end method
