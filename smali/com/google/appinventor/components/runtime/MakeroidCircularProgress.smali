.class public final Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout$LayoutParams;

.field private MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 33
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xde690e

    .line 30
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 34
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->context:Landroid/content/Context;

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010077

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    .line 38
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->Color(I)V

    const-string p1, "Makeroid Progress bar circular "

    const-string v0, "Makeroid Progress bar circular created"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final Color()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 61
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    return v0
.end method

.method public final Color(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the indeterminate color of the circular progress bar."
    .end annotation

    .line 54
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Indeterminate Color = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Progress bar circular "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->getView()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/widget/ProgressBar;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    return-object v0
.end method
