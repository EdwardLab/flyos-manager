.class public Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;
    }
.end annotation


# instance fields
.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

.field private P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

.field private handler:Landroid/os/Handler;

.field private final qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtUltrasonicSensor"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    .line 58
    sget p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    .line 59
    new-instance p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    const-string p1, "4"

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BottomOfRange(I)V

    const/16 p1, 0x5a

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->TopOfRange(I)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRangeEventEnabled(Z)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    return p0
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 146
    fill-array-data v0, :array_0

    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I

    move-result v3

    if-lez v3, :cond_0

    .line 156
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    .line 158
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result p1

    if-ltz p1, :cond_1

    const/16 v1, 0xfe

    if-gt p1, v1, :cond_1

    .line 160
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    return-object p1

    :array_0
    .array-data 1
        0x2t
        0x42t
    .end array-data
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result p0

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    return p0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    return p0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone above the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    .line 325
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v0

    .line 311
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    .line 313
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 318
    sget p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    .line 319
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .line 299
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone below the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    .line 251
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 235
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v0

    .line 237
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    .line 239
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 244
    sget p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    .line 245
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I

    .line 191
    sget p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    return-void
.end method

.method public GetDistance()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    const-string v0, "GetDistance"

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 135
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 136
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Z

    if-eqz v1, :cond_1

    .line 137
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 202
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 213
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    .line 214
    sget p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone within the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    .line 288
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 272
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v0

    .line 274
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    .line 276
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 281
    sget p1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:I

    .line 282
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 262
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C9V:Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Raw:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1110
    fill-array-data v0, :array_0

    .line 1114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    return-void

    :array_0
    .array-data 1
        0x2t
        0x41t
        0x2t
    .end array-data
.end method

.method public onDelete()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
