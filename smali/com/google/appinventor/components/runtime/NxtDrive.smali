.class public Lcom/google/appinventor/components/runtime/NxtDrive;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/common/NxtMotorPort;",
            ">;"
        }
    .end annotation
.end field

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

.field private lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

.field private vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtDrive"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    const-string p1, "CB"

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->DriveMotors(Ljava/lang/String;)V

    const p1, 0x408a3d71    # 4.32f

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->WheelDiameter(F)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->StopBeforeDisconnect(Z)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V
    .locals 10

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/appinventor/components/common/NxtMotorPort;

    sget-object v4, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 216
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/appinventor/components/common/NxtMotorPort;

    neg-int v3, p2

    sget-object v4, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    sget-object v7, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V
    .locals 12

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 177
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 178
    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v6, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v9, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that are used for driving: the left wheel\'s motor port followed by the right wheel\'s motor port."
        userVisible = false
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Ljava/lang/String;

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CB"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v3

    if-nez v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x197

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v2, "DriveMotors"

    invoke-virtual {v3, p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double p2, p2, v0

    .line 167
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    div-double/2addr p2, v0

    double-to-long p2, p2

    neg-int p1, p1

    const-string v0, "MoveBackward"

    .line 169
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    neg-int p1, p1

    const-string v0, "MoveBackwardIndefinitely"

    const-wide/16 v1, 0x0

    .line 153
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    return-void
.end method

.method public MoveForward(ID)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double p2, p2, v0

    .line 159
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    div-double/2addr p2, v0

    double-to-long p2, p2

    const-string v0, "MoveForward"

    .line 161
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    const-string v0, "MoveForwardIndefinitely"

    const-wide/16 v1, 0x0

    .line 147
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    return-void
.end method

.method public Stop()V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    const-string v10, "Stop"

    .line 228
    invoke-virtual {p0, v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/appinventor/components/common/NxtMotorPort;

    const/4 v3, 0x0

    .line 233
    sget-object v4, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the drive motors before disconnecting."
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward."
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TurnClockwiseIndefinitely"

    .line 191
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward."
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TurnCounterClockwiseIndefinitely"

    .line 203
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels used for driving."
        userVisible = false
    .end annotation

    .line 108
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    double-to-float v0, v0

    return v0
.end method

.method public WheelDiameter(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    float-to-double v0, p1

    .line 120
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 11

    .line 62
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Z

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/common/NxtMotorPort;

    const/4 v4, 0x0

    .line 64
    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v6, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v9, 0x0

    const-string v2, "Disconnect"

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
