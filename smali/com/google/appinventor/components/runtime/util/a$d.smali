.class final Lcom/google/appinventor/components/runtime/util/a$d;
.super Lorg/osmdroid/views/overlay/Polygon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

.field PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1359
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1391
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1394
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1395
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1396
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1398
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1399
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1400
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1401
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$d;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$d;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1403
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$d;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1404
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$d;->getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1405
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1406
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1407
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1408
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final contains(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1517
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1376
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 1555
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1556
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1416
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 1548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1549
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 1526
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/a$d;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1528
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mDraggable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1529
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mIsDragged:Z

    .line 1530
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/a$d;->closeInfoWindow()V

    .line 1531
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 1532
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1535
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/a$d;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 1536
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v1, :cond_2

    .line 1537
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1538
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1538
    invoke-virtual {v2, v3, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    .line 1537
    invoke-interface {v1, p0, p2, p1}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 1506
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1507
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 1562
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mIsDragged:Z

    if-eqz v0, :cond_3

    .line 1563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1564
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mIsDragged:Z

    .line 1565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/a$d;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1566
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz p1, :cond_0

    .line 1567
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    :cond_0
    return v2

    .line 1570
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/a$d;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1572
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz p1, :cond_2

    .line 1573
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final setDraggable(Z)V
    .locals 2

    .line 1439
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1440
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    .line 1441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1442
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setFillColor(I)V
    .locals 2

    .line 1482
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1483
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1484
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 2

    .line 1448
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1449
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1451
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .locals 2

    .line 1457
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1458
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1460
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 2

    .line 1498
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1500
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 2

    .line 1474
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1476
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 2

    .line 1466
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1468
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1490
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1492
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final showInfoWindow()V
    .locals 2

    .line 1368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    :cond_0
    return-void
.end method

.method public final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1422
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1426
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1431
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void

    .line 1427
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Holes and points are not of the same arity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1423
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$d;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    return-void
.end method
