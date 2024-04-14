.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private connectedBluetoothSocket:Ljava/lang/Object;

.field private delimiter:B

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field protected secure:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    const-string p2, "UTF-8"

    .line 69
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    const-string v0, "Not Null"

    .line 79
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 81
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 104
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 110
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .line 530
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BytesAvailableToReceive"

    if-nez v0, :cond_0

    const/16 v0, 0x203

    new-array v3, v1, [Ljava/lang/Object;

    .line 531
    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/16 v3, 0x205

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 539
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    :try_start_0
    const-string v0, "check"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 254
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "CharacterEncoding"

    .line 256
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 297
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    int-to-byte v0, p1

    shr-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v0, 0x1ff

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "DelimiterByte"

    .line 283
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_0
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return-void
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while disconnecting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 183
    :cond_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 184
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .line 150
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HighByteFirst(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    .line 242
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public final IsConnected()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveSigned1ByteNumber"

    const/4 v1, 0x1

    .line 576
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 577
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 581
    :cond_0
    aget-byte v0, v0, v3

    return v0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveSigned2ByteNumber"

    const/4 v1, 0x2

    .line 604
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 605
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 610
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    :goto_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 612
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveSigned4ByteNumber"

    const/4 v1, 0x4

    .line 640
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 641
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_1

    .line 646
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v6

    :goto_0
    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 651
    :cond_1
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v3

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ReceiveSignedBytes"

    .line 696
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object p1

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 698
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 699
    aget-byte v2, p1, v1

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    const-string v0, "ReceiveText"

    .line 556
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    if-gez p1, :cond_0

    .line 560
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p1

    .line 562
    :cond_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 565
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveUnsigned1ByteNumber"

    const/4 v1, 0x1

    .line 590
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 591
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 595
    :cond_0
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveUnsigned2ByteNumber"

    const/4 v1, 0x2

    .line 622
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 623
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 628
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    :goto_0
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 630
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveUnsigned4ByteNumber"

    const/4 v1, 0x4

    .line 664
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 665
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x18

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0xff

    if-ne v1, v2, :cond_1

    .line 670
    aget-byte v1, v0, v4

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v4, v0, v6

    int-to-long v12, v4

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v1, v6

    aget-byte v4, v0, v8

    int-to-long v6, v4

    and-long/2addr v6, v10

    shl-long v4, v6, v5

    or-long/2addr v1, v4

    aget-byte v0, v0, v9

    :goto_0
    int-to-long v4, v0

    and-long/2addr v4, v10

    shl-long v3, v4, v3

    or-long v0, v1, v3

    return-wide v0

    .line 675
    :cond_1
    aget-byte v1, v0, v9

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    shl-long v7, v8, v7

    or-long/2addr v1, v7

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v10

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ReceiveUnsignedBytes"

    .line 719
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object p1

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 721
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 722
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Secure(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    const-string v0, "Send1ByteNumber"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 336
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v4, v3

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/16 v3, 0x1ff

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 345
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 349
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 338
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    const-string v0, "Send2ByteNumber"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 367
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    new-array v5, v4, [B

    .line 374
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_0

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v6, v3

    aput-byte v6, v5, v1

    goto :goto_0

    :cond_0
    int-to-byte v6, v3

    aput-byte v6, v5, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    :goto_0
    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/16 v3, 0x200

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 386
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    .line 385
    invoke-virtual {p0, v0, v3, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 389
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 369
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    const-string v0, "Send4ByteNumber"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 407
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 414
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x8

    const-wide/16 v12, 0xff

    if-ne v7, v8, :cond_0

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v9

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v10

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v1

    goto :goto_0

    :cond_0
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v1

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v10

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v9

    :goto_0
    shr-long/2addr v3, v11

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    const/16 v3, 0x200

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 434
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 433
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 437
    :cond_1
    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 409
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .line 453
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 454
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 455
    :goto_0
    array-length v3, p1

    const-string v4, "SendBytes"

    if-ge v2, v3, :cond_1

    .line 458
    aget-object v3, p1, v2

    .line 459
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 462
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v6, v3

    .line 468
    aput-byte v6, v0, v2

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    const/16 p1, 0x202

    new-array v0, v5, [Ljava/lang/Object;

    add-int/2addr v2, v5

    .line 472
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 471
    invoke-virtual {p0, v4, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const/16 p1, 0x201

    new-array v0, v5, [Ljava/lang/Object;

    add-int/2addr v2, v5

    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 464
    invoke-virtual {p0, v4, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 476
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_0
    const-string v0, "SendText"

    .line 314
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method addBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 803
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 796
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 10

    .line 739
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0x203

    new-array v0, v1, [Ljava/lang/Object;

    .line 740
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    new-array p1, v1, [B

    return-object p1

    .line 745
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x206

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x205

    if-ltz p2, :cond_3

    .line 749
    new-array v6, p2, [B

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p2, :cond_2

    .line 753
    :try_start_0
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    sub-int v9, p2, v7

    invoke-virtual {v8, v6, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v3, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 755
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/2addr v7, v8

    goto :goto_0

    :catch_0
    move-exception p2

    new-array v2, v4, [Ljava/lang/Object;

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 761
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 766
    :cond_2
    :goto_1
    invoke-virtual {v0, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 771
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-ne p2, v3, :cond_4

    new-array p2, v1, [Ljava/lang/Object;

    .line 773
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 777
    :cond_4
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 778
    iget-byte v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v6, :cond_3

    goto :goto_2

    :catch_1
    move-exception p2

    new-array v2, v4, [Ljava/lang/Object;

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 782
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 789
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 161
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 162
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 163
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 164
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 4

    .line 486
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0x203

    new-array v0, v1, [Ljava/lang/Object;

    .line 487
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 493
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 494
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/16 v0, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 496
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 4

    .line 508
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0x203

    new-array v0, v1, [Ljava/lang/Object;

    .line 509
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 515
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 516
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/16 v0, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 518
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
