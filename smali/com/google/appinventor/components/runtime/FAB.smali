.class public Lcom/google/appinventor/components/runtime/FAB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Floating Button Component to make a Floating Action Button on the right bottom of the screen"
    iconName = "images/fab.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

.field private ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

.field private M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

.field private W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

.field private iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

.field private n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

.field private size:I

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

    .line 56
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/FAB;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

    .line 58
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Ljava/lang/String;

    const/high16 v0, -0x10000

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    const/16 v0, 0x38

    .line 63
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB;->size:I

    const/16 v0, 0x8

    .line 64
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    .line 65
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    .line 72
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->context:Landroid/content/Context;

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->activity:Landroid/app/Activity;

    const-string p1, "FAB Extension"

    const-string v0, "FAB Extension Created"

    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FAB;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    return p1
.end method


# virtual methods
.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "FAB Clicked"
    .end annotation

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Color()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Color"
    .end annotation

    .line 168
    iget v0, p0, Lcom/google/appinventor/components/runtime/FAB;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    return v0
.end method

.method public Color(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Color"
    .end annotation

    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    .line 175
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setFloatingActionButtonColor(I)V

    :cond_0
    return-void
.end method

.method public Create()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create FAB"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

    .line 86
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    .line 88
    new-instance v1, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FAB;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/FAB;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    .line 90
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withButtonColor(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/FAB;->size:I

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withButtonSize(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v1

    const v2, 0x800055

    .line 92
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withGravity(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/FAB;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/FAB;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withMargins(IIII)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->create()Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    .line 96
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/FAB;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hideFloatingActionButton(Z)V

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->showFloatingActionButton(Z)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/FAB$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FAB$1;-><init>(Lcom/google/appinventor/components/runtime/FAB;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/FAB$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FAB$2;-><init>(Lcom/google/appinventor/components/runtime/FAB;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public Icon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Icon Path"
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Ljava/lang/String;

    return-object v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Icon Path"
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Ljava/lang/String;

    .line 157
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 159
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to load "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FAB Extension"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public IsCreated()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is FAB created?"
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

    return v0
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "FAB Long Clicked"
    .end annotation

    .line 132
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 133
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public MarginBottom()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns bottom margin"
    .end annotation

    .line 259
    iget v0, p0, Lcom/google/appinventor/components/runtime/FAB;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    return v0
.end method

.method public MarginBottom(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Bottom Margin in dp, Default = 16"
    .end annotation

    .line 253
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:I

    return-void
.end method

.method public MarginRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns right margin"
    .end annotation

    .line 247
    iget v0, p0, Lcom/google/appinventor/components/runtime/FAB;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    return v0
.end method

.method public MarginRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Right Margin in dp, Default = 16"
    .end annotation

    .line 241
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:I

    return-void
.end method

.method public Size()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns FAB size in dp"
    .end annotation

    .line 198
    iget v0, p0, Lcom/google/appinventor/components/runtime/FAB;->size:I

    return v0
.end method

.method public Size(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "size"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set FAB Size.\nSet it to 1 for Normal size, 2 for Mini."
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x28

    .line 189
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB;->size:I

    return-void

    :cond_0
    const/16 p1, 0x38

    .line 191
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB;->size:I

    return-void
.end method

.method public UseAnimation(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

    if-eqz v0, :cond_0

    .line 227
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FAB;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

    :cond_0
    return-void
.end method

.method public UseAnimation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Are animations on?"
    .end annotation

    .line 233
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

    return v0
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 206
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Z

    if-eqz v0, :cond_1

    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->showFloatingActionButton(Z)V

    return-void

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Z

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hideFloatingActionButton(Z)V

    :cond_1
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is FAB visible?"
    .end annotation

    .line 218
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    return v0
.end method
