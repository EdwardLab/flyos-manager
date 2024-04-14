.class public final Lcom/google/appinventor/components/runtime/Ratingbar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/user-interface/rating-bar/"
    iconName = "images/ratingbar.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/LayerDrawable;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 31
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xcbcca

    .line 27
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

    const v1, -0x616162

    .line 28
    iput v1, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

    .line 32
    new-instance v2, Landroid/widget/RatingBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    .line 33
    invoke-virtual {v2, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 34
    invoke-virtual {v2}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/LayerDrawable;

    .line 35
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, 0x5

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ratingbar;->SetNumberOfStars(I)V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ratingbar;->IsIndicator(Z)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ratingbar;->SetStepSize(F)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ratingbar;->StarColor(I)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Ratingbar;->BackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the background color of the star."
    .end annotation

    .line 111
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF9E9E9E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the background color of the star."
    .end annotation

    .line 105
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public final Changed(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when the rating has been changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Changed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final GetNumberOfStars()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the number of stars shown."
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    return v0
.end method

.method public final GetRating()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current rating (number of stars filled)."
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    return v0
.end method

.method public final GetStepSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the step size (granularity) of this rating bar."
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getStepSize()F

    move-result v0

    return v0
.end method

.method public final Height()I
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ratingbar;->getView()Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public final Height(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public final IsIndicator(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether this rating bar should only be an indicator (thus non-changeable by the user)."
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    return-void
.end method

.method public final SetNumberOfStars(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the number of stars to show."
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setNumStars(I)V

    return-void
.end method

.method public final SetRating(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the rating (the number of stars filled)."
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    return-void
.end method

.method public final SetStepSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ".5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the step size (granularity) of this rating bar."
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setStepSize(F)V

    return-void
.end method

.method public final StarColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the background color of the star."
    .end annotation

    .line 98
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

    return v0
.end method

.method public final StarColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFF34336"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the color of the star."
    .end annotation

    .line 92
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public final Width()I
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ratingbar;->getView()Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v0

    return v0
.end method

.method public final Width(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ratingbar;->getView()Landroid/widget/RatingBar;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/widget/RatingBar;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ratingbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 0

    .line 51
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Ratingbar;->Changed(F)V

    return-void
.end method
