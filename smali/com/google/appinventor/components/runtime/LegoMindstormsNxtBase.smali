.class public Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending communication transaction in progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified mailbox queue is empty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x81

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more handles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x82

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x83

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x84

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file expected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x85

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x86

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not a linear file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x87

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x88

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Handle already closed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x89

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No linear space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8a

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Undefined error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8b

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8c

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No write buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8d

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Append not possible"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8e

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8f

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File exists"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x90

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Module not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x91

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Out of boundary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x92

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal file name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x93

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbd

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Request failed (i.e. specified file not found)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbe

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown command opcode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbf

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insane packet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc0

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Data contains out-of-range values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xdd

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication bus error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xde

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No free memory in communication buffer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xdf

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection is not valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection not configured or busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xec

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No active program"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xed

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal size specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xee

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal mailbox queue ID specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xef

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempted to access invalid field of a structure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf0

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad input or output specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfb

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insufficient memory available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xff

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad arguments"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 99
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 91
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
        userVisible = false
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    :cond_0
    if-eqz p1, :cond_1

    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/16 v0, 0x804

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 135
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    return-void
.end method

.method protected final checkBluetooth(Ljava/lang/String;)Z
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x191

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x192

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected final convertMotorPortLetterToNumber(C)I
    .locals 2

    const/16 v0, 0x41

    if-eq p1, v0, :cond_5

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_4

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x43

    if-eq p1, v0, :cond_3

    const/16 v0, 0x63

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 525
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal motor port letter "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p1, 0x2

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method protected final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 2

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result p1

    return p1

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal motor port letter "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(C)I
    .locals 2

    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 545
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal sensor port letter "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 2

    .line 529
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result p1

    return p1

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal sensor port letter "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final copyBooleanValueToBytes(Z[BI)V
    .locals 0

    .line 394
    aput-byte p1, p2, p3

    return-void
.end method

.method protected final copySBYTEValueToBytes(I[BI)V
    .locals 0

    int-to-byte p1, p1

    .line 398
    aput-byte p1, p2, p3

    return-void
.end method

.method protected final copySLONGValueToBytes(I[BI)V
    .locals 2

    int-to-byte v0, p1

    .line 418
    aput-byte v0, p2, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    .line 420
    aput-byte v1, p2, v0

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, p3, 0x2

    int-to-byte v1, p1

    .line 422
    aput-byte v1, p2, v0

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x3

    int-to-byte p1, p1

    .line 424
    aput-byte p1, p2, p3

    return-void
.end method

.method protected final copySWORDValueToBytes(I[BI)V
    .locals 1

    int-to-byte v0, p1

    .line 406
    aput-byte v0, p2, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x1

    int-to-byte p1, p1

    .line 408
    aput-byte p1, p2, p3

    return-void
.end method

.method protected final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 5

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    .line 440
    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnsupportedEncodingException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 449
    :goto_0
    array-length v0, p1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 450
    invoke-static {p1, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final copyUBYTEValueToBytes(I[BI)V
    .locals 0

    int-to-byte p1, p1

    .line 402
    aput-byte p1, p2, p3

    return-void
.end method

.method protected final copyULONGValueToBytes(J[BI)V
    .locals 6

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 428
    aput-byte v2, p3, p4

    const/16 v2, 0x8

    shr-long/2addr p1, v2

    add-int/lit8 v3, p4, 0x1

    and-long v4, p1, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 430
    aput-byte v4, p3, v3

    shr-long/2addr p1, v2

    add-int/lit8 v3, p4, 0x2

    and-long v4, p1, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 432
    aput-byte v4, p3, v3

    shr-long/2addr p1, v2

    add-int/lit8 p4, p4, 0x3

    and-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 434
    aput-byte p1, p3, p4

    return-void
.end method

.method protected final copyUWORDValueToBytes(I[BI)V
    .locals 1

    int-to-byte v0, p1

    .line 412
    aput-byte v0, p2, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x1

    int-to-byte p1, p1

    .line 414
    aput-byte p1, p2, p3

    return-void
.end method

.method protected final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 5

    .line 346
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    .line 1381
    sget-object v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x194

    if-eqz v1, :cond_1

    .line 1383
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v1, p3, v0

    invoke-virtual {p2, p0, p1, v2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p3, p3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error code 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p2, p2, 0xff

    .line 1388
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    .line 1386
    invoke-virtual {v1, p0, p1, v2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected final getBooleanValueFromBytes([BI)Z
    .locals 0

    .line 454
    aget-byte p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getInputValues(Ljava/lang/String;I)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 206
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    aget-byte v0, v0, v2

    .line 208
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return-object p2

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected 16)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B
    .locals 0

    .line 220
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getInputValues(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected final getSBYTEValueFromBytes([BI)I
    .locals 0

    .line 458
    aget-byte p1, p1, p2

    return p1
.end method

.method protected final getSLONGValueFromBytes([BI)I
    .locals 2

    .line 476
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method protected final getSWORDValueFromBytes([BI)I
    .locals 1

    .line 466
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method protected final getStatus(Ljava/lang/String;[BB)I
    .locals 5

    .line 356
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 357
    aget-byte v1, p2, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": unexpected return package byte 0: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (expected 0x02)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 361
    aget-byte v1, p2, v0

    if-eq v1, p3, :cond_1

    .line 362
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package byte 1: 0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p2, v0

    and-int/lit16 p1, p1, 0xff

    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (expected 0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p3, 0xff

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result p1

    return p1

    .line 368
    :cond_2
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected >= 3)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method protected final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 2

    move v0, p2

    .line 492
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 493
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 498
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 4

    .line 503
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected final getUBYTEValueFromBytes([BI)I
    .locals 0

    .line 462
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method protected final getULONGValueFromBytes([BI)J
    .locals 7

    .line 483
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    const/16 v2, 0x18

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method protected final getUWORDValueFromBytes([BI)I
    .locals 1

    .line 471
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method protected final lsGetStatus(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const/16 v3, 0xe

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v3, 0x2

    .line 239
    invoke-virtual {p0, p2, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 240
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    aget-byte v1, v1, v4

    .line 241
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    array-length v1, p2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 243
    invoke-virtual {p0, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result p1

    return p1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected 4)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method protected final lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I
    .locals 0

    .line 253
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsGetStatus(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected final lsRead(Ljava/lang/String;I)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 280
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    aget-byte v0, v0, v2

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    return-object p2

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected 20)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B
    .locals 0

    .line 294
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsRead(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected final lsWrite(Ljava/lang/String;I[BI)V
    .locals 5

    .line 257
    array-length v0, p3

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 260
    array-length v0, p3

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 261
    aput-byte v2, v0, v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    .line 262
    aput-byte v3, v0, v4

    const/4 v3, 0x2

    .line 263
    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 264
    array-length p2, p3

    const/4 v3, 0x3

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x4

    .line 265
    invoke-virtual {p0, p4, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 266
    array-length p2, p3

    invoke-static {p3, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    .line 268
    aget-byte p3, v0, v4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    return-void

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be <= 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V
    .locals 0

    .line 273
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsWrite(Ljava/lang/String;I[BI)V

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V

    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    :cond_0
    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 227
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V
    .locals 0

    .line 232
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->resetInputScaledValue(Ljava/lang/String;I)V

    return-void
.end method

.method protected final sanitizePower(I)I
    .locals 4

    const-string v0, "power "

    const/16 v1, -0x64

    if-ge p1, v1, :cond_0

    .line 550
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using -100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x64

    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 554
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using 100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    :cond_1
    return p1
.end method

.method protected final sanitizeTurnRatio(I)I
    .locals 4

    const-string v0, "turnRatio "

    const/16 v1, -0x64

    if-ge p1, v1, :cond_0

    .line 562
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using -100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x64

    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 566
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using 100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    :cond_1
    return p1
.end method

.method protected final sendCommand(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 325
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    .line 326
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 3

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 1331
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object p2

    .line 1332
    array-length v1, p2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 1333
    invoke-virtual {p0, p2, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result p2

    .line 1334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object p2

    .line 1335
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-object p2

    .line 1340
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x193

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    new-array p1, v2, [B

    return-object p1
.end method

.method protected final setInputMode(Ljava/lang/String;III)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    const/4 v0, 0x2

    .line 188
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x3

    .line 189
    invoke-virtual {p0, p3, v1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x4

    .line 190
    invoke-virtual {p0, p4, v1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V
    .locals 0

    .line 199
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/google/appinventor/components/common/NxtSensorType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/google/appinventor/components/common/NxtSensorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->setInputMode(Ljava/lang/String;III)V

    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 3

    .line 144
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result p3

    .line 145
    invoke-virtual {p0, p6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizeTurnRatio(I)I

    move-result p6

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x3

    .line 150
    invoke-virtual {p0, p3, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 151
    invoke-virtual {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x5

    .line 152
    invoke-virtual {p0, p5, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x6

    .line 153
    invoke-virtual {p0, p6, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    const/4 p2, 0x7

    .line 154
    invoke-virtual {p0, p7, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/16 p2, 0x8

    .line 160
    invoke-virtual {p0, p8, p9, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V
    .locals 11

    .line 175
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 177
    invoke-virtual {p4}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 178
    invoke-virtual/range {p5 .. p5}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 180
    invoke-virtual/range {p7 .. p7}, Lcom/google/appinventor/components/common/NxtRunState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move/from16 v7, p6

    move-wide/from16 v9, p8

    .line 173
    invoke-virtual/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    return-void
.end method
