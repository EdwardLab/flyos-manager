.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 1

    .line 142
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity(F)V

    :cond_0
    return-void
.end method
