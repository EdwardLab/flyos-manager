.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;
.super Lcom/google/appinventor/components/runtime/MapFeatureBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:F

.field private ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    const p1, -0xcbcca

    .line 20
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:F

    const/high16 p2, -0x10000

    .line 26
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->FillColor(I)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->FillOpacity(F)V

    return-void
.end method


# virtual methods
.method public FillColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to fill in the map feature."
    .end annotation

    .line 43
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    return v0
.end method

.method public FillColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFF34336"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    .line 36
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    return-void
.end method

.method public FillOpacity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The opacity of the interior of the map feature."
    .end annotation

    .line 60
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:F

    return v0
.end method

.method public FillOpacity(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 51
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:F

    .line 52
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    return-void
.end method
