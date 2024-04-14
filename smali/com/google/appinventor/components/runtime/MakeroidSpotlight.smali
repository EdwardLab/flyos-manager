.class public final Lcom/google/appinventor/components/runtime/MakeroidSpotlight;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Spotlight component"
    iconName = "images/spotlight.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "Spotlight.aar",
        "Spotlight.jar"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field private JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Z

.field private LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

.field private MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

.field private MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Z

.field private O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

.field private OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

.field private RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Z

.field private activity:Landroid/app/Activity;

.field private cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

.field private hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

.field private jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

.field private pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Z

.field private q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

.field private seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

.field private wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Ljava/lang/String;

.field private z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

.field private z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/high16 v0, -0x42000000    # -0.125f

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    const/16 v0, 0x20

    .line 46
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    const v0, -0xc0ae4b

    .line 47
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    const/16 v1, 0x10

    .line 49
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    .line 51
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Z

    .line 53
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Z

    .line 54
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Z

    const-wide/16 v1, 0x190

    .line 56
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 57
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 58
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    const/16 v1, 0x14

    .line 59
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    .line 63
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    .line 64
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Z

    .line 67
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->activity:Landroid/app/Activity;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/wooplr/spotlight/prefs/PreferencesManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wooplr/spotlight/prefs/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)Z
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    return v0
.end method


# virtual methods
.method public final CirclePadding()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 324
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    return v0
.end method

.method public final CirclePadding(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "20"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The padding for the circle spotlight. Default is \'20\'."
    .end annotation

    .line 319
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    return-void
.end method

.method public final Clicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the spotlight is clicked."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clicked"

    .line 461
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Component()Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the component."
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    return-object v0
.end method

.method public final Component(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "component"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The component to show in the spotlight."
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    return-void
.end method

.method public final DismissOnBackPress(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dismiss the spotlight on back pressed."
    .end annotation

    .line 221
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Z

    return-void
.end method

.method public final DismissOnBackPress()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not DismissOnBackPress is enabled."
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Z

    return v0
.end method

.method public final DismissOnTouch(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dismiss the spotlight on touch"
    .end annotation

    .line 235
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Z

    return-void
.end method

.method public final DismissOnTouch()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not DismissOnTouch is enabled."
    .end annotation

    .line 241
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Z

    return v0
.end method

.method public final EnableDismissAfterShown(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dismiss spotlight on touch after spotlight is completely visible."
    .end annotation

    .line 249
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Z

    return-void
.end method

.method public final EnableDismissAfterShown()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not EnableDismissAfterShown is enabled."
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Z

    return v0
.end method

.method public final EnableRevealAnimation(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable reveal animation (Only for Lollipop and above)."
    .end annotation

    .line 263
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Z

    return-void
.end method

.method public final EnableRevealAnimation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not EnableRevealAnimation is enabled."
    .end annotation

    .line 269
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Z

    return v0
.end method

.method public final FadeinTextDuration()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the FadeinTextDuration."
    .end annotation

    .line 297
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    return-wide v0
.end method

.method public final FadeinTextDuration(J)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Fade in animation duration for spotlight text (Heading and Sub-heading)."
    .end annotation

    .line 291
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    return-void
.end method

.method public final FontHeadingTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 338
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    return v0
.end method

.method public final FontHeadingTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 331
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:I

    .line 332
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    return-void
.end method

.method public final FontHeadingTypefaceImport(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method public final FontSubheadingTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 361
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    return v0
.end method

.method public final FontSubheadingTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 354
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:I

    .line 355
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    return-void
.end method

.method public final FontSubheadingTypefaceImport(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    if-eqz p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method public final HeadingText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight heading text."
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    return-object v0
.end method

.method public final HeadingText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight heading text."
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    return-void
.end method

.method public final HeadingTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight heading text color."
    .end annotation

    .line 157
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    return v0
.end method

.method public final HeadingTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight heading text color."
    .end annotation

    .line 151
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    return-void
.end method

.method public final HeadingTextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight heading text size."
    .end annotation

    .line 143
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    return v0
.end method

.method public final HeadingTextSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "32"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight heading size."
    .end annotation

    .line 137
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    return-void
.end method

.method public final IntroAnimationDuration()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the IntroAnimationDuration."
    .end annotation

    .line 283
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    return-wide v0
.end method

.method public final IntroAnimationDuration(J)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Intro animation duration (For Reveal and Fadein)."
    .end annotation

    .line 277
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    return-void
.end method

.method public final LineAndArcColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight line and arc color."
    .end annotation

    .line 213
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    return v0
.end method

.method public final LineAndArcColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight line and arc color."
    .end annotation

    .line 207
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    return-void
.end method

.method public final LineAnimationDuration()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the LineAnimationDuration."
    .end annotation

    .line 311
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    return-wide v0
.end method

.method public final LineAnimationDuration(J)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Line animation duration"
    .end annotation

    .line 305
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    return-void
.end method

.method public final MaskColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight mask color."
    .end annotation

    .line 115
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    return v0
.end method

.method public final MaskColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&Hbe000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight mask color"
    .end annotation

    .line 109
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    return-void
.end method

.method public final ShowSpotlight()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to show the spotlight."
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    invoke-virtual {v0}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->resetAll()V

    .line 390
    new-instance v0, Lcom/wooplr/spotlight/SpotlightView$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    .line 391
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->maskColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    .line 392
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    .line 393
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    .line 394
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Ljava/lang/String;

    .line 395
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    .line 396
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    .line 397
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    .line 398
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAndArcColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Z

    .line 399
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnBackPress(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Z

    .line 400
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnTouch(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Z

    .line 401
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Z

    .line 402
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableRevealAnimation(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->introAnimationDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->fadeinTextDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    .line 405
    invoke-virtual {v0, v1, v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAnimDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 406
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    .line 407
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->targetPadding(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    const/16 v1, 0x14

    .line 408
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->extraPaddingForArc(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    .line 409
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    .line 410
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setSubHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Z

    .line 411
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->showTargetArc(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)V

    .line 412
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->show()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    return-void
.end method

.method public final ShowSpotlightOnFAB(Lcom/google/appinventor/components/runtime/MakeroidFab;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to show the spotlight on a floating action button."
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    invoke-virtual {v0}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->resetAll()V

    .line 426
    new-instance v0, Lcom/wooplr/spotlight/SpotlightView$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    .line 427
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->maskColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    .line 428
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    .line 429
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    .line 430
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Ljava/lang/String;

    .line 431
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    .line 432
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    .line 433
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:I

    .line 434
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAndArcColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Z

    .line 435
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnBackPress(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Z

    .line 436
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnTouch(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Z

    .line 437
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Z

    .line 438
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableRevealAnimation(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->introAnimationDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 440
    invoke-virtual {v0, v1, v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->fadeinTextDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAnimDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidFab;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:I

    .line 443
    invoke-virtual {p1, v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->targetPadding(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    const/16 v0, 0x14

    .line 444
    invoke-virtual {p1, v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->extraPaddingForArc(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    .line 445
    invoke-virtual {p1, v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    .line 446
    invoke-virtual {p1, v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setSubHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Z

    .line 447
    invoke-virtual {p1, v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->showTargetArc(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)V

    .line 448
    invoke-virtual {p1, v0}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->show()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    const/4 p1, 0x1

    .line 456
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    return-void
.end method

.method public final ShowTargetArc(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 377
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Z

    return-void
.end method

.method public final ShowTargetArc()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true you will see a half round circle below the spotlight circle."
    .end annotation

    .line 384
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Z

    return v0
.end method

.method public final SubheadingText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight subheading text."
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Ljava/lang/String;

    return-object v0
.end method

.method public final SubheadingText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight subheading text."
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Ljava/lang/String;

    return-void
.end method

.method public final SubheadingTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight subheading text color."
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    return v0
.end method

.method public final SubheadingTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight subheading text color."
    .end annotation

    .line 193
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    return-void
.end method

.method public final SubheadingTextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight subheading text size."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    return v0
.end method

.method public final SubheadingTextSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight subheading text size."
    .end annotation

    .line 179
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    return-void
.end method

.method public final onOrientationChange()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lcom/wooplr/spotlight/SpotlightView;->removeSpotlightView(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ShowSpotlight()V

    :cond_0
    return-void
.end method
