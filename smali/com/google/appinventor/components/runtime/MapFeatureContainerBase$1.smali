.class final Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2085
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4073
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5067
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3079
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1091
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    const/4 p1, 0x0

    return-object p1
.end method
