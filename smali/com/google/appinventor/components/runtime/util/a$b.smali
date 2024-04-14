.class final Lcom/google/appinventor/components/runtime/util/a$b;
.super Lorg/osmdroid/views/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/a;Landroid/content/Context;)V
    .locals 2

    .line 265
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    .line 266
    new-instance v0, Lcom/google/appinventor/components/runtime/util/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/a$c;-><init>(Lcom/google/appinventor/components/runtime/util/a;B)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onDetach()V
    .locals 0

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$b;->getScrollX()I

    move-result v0

    sub-int v1, p3, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$b;->getScrollY()I

    move-result v1

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/a$b;->scrollTo(II)V

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/MapView;->onSizeChanged(IIII)V

    return-void
.end method
