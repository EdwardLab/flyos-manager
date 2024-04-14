.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;
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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 1

    .line 133
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    if-eqz v0, :cond_1

    .line 134
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)I

    move-result p2

    .line 134
    :goto_0
    invoke-interface {p1, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor(I)V

    :cond_1
    return-void
.end method
