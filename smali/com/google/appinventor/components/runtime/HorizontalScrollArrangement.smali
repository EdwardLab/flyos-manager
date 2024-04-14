.class public Lcom/google/appinventor/components/runtime/HorizontalScrollArrangement;
.super Lcom/google/appinventor/components/runtime/HVArrangement;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed from left to right.  If you wish to have components displayed one over another, use <code>VerticalArrangement</code> instead.</p><p>This version is scrollable."
    iconName = "images/horizontalScroll.png"
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 31
    sget-boolean v0, Lcom/google/appinventor/components/common/ComponentConstants;->SCROLLABLE_ARRANGEMENT:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V

    return-void
.end method
