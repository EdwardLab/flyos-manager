.class final Lcom/google/appinventor/components/runtime/util/a$e;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/a;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$e;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/a$e;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/a;B)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/a$e;-><init>(Lcom/google/appinventor/components/runtime/util/a;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a$e;)Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/a$e;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a$e;Z)Z
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/a$e;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    return p1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 221
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/a$e;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 231
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    .line 232
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    .line 233
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide p1

    .line 234
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/a$e;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 235
    invoke-interface {v3, v0, v1, p1, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onLongPress(DD)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 226
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/a$e;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
