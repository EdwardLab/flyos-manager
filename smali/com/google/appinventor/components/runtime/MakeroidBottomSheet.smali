.class public Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/bottomsheet.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Z

.field private showStatusBar:Z

.field private xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->showStatusBar:Z

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->context:Landroid/content/Context;

    const-string p1, "Bottom Sheet Component"

    const-string v0, "Bottom Sheet Created"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddListener()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public Closed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the dialog was closed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Closed"

    .line 119
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DimBackground(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user will see a dark background effect. Else the background have then no dark background effect."
    .end annotation

    .line 155
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    .line 156
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->Update()V

    :cond_0
    return-void
.end method

.method public DimBackground()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    return v0
.end method

.method public HideDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the bottom sheet dialog."
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public Opened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the dialog was opened."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Opened"

    .line 114
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RegisterComponentAsDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Register any component as example a \'button\', that will be later your bottom sheet dialog."
    .end annotation

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->AddListener()V

    .line 70
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->Update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bottom Sheet Component"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public RegisterLayoutAsDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Register any layout as example a \'horizontal arrangement\', that will be later your bottom sheet dialog."
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 52
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->AddListener()V

    .line 55
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->Update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bottom Sheet Component"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ShowDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the bottom sheet dialog."
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    :cond_0
    return-void
.end method

.method public ShowStatusBar(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 170
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->showStatusBar:Z

    .line 171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->Update()V

    :cond_0
    return-void
.end method

.method public ShowStatusBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->showStatusBar:Z

    return v0
.end method

.method public Update()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 100
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dim Background is set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bottom Sheet Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->showStatusBar:Z

    const/16 v1, 0x800

    const/16 v2, 0x400

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    return-void
.end method
