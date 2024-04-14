.class public Lcom/google/appinventor/components/runtime/TimePicker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, launches  a popup dialog to allow the user to select a time.</p>"
    version = 0x9
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

.field private androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

.field private jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

.field private plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 56
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    .line 151
    new-instance v0, Lcom/google/appinventor/components/runtime/TimePicker$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TimePicker$1;-><init>(Lcom/google/appinventor/components/runtime/TimePicker;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    const/16 v0, 0xc

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    .line 61
    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    .line 64
    iget p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    iget v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->androidUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/TimePicker;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/TimePicker;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    return-object p1
.end method


# virtual methods
.method public AfterTimeSet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a user has set the time in the popup dialog."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterTimeSet"

    .line 177
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Hour()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The hour of the last time set using the time picker. The hour is in a 24 hour format. If the last time set was 11:53 pm, this property will return 23."
    .end annotation

    .line 82
    iget v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    return v0
.end method

.method public Instant()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The instant of the last time set using the time picker"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    return-object v0
.end method

.method public LaunchPicker()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the TimePicker popup."
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TimePicker;->click()V

    return-void
.end method

.method public Minute()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minute of the last time set using the time picker"
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    return v0
.end method

.method public SetTimeToDisplay(II)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the time to be shown in the Time Picker popup. Current time is shown by default."
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SetTimeToDisplay"

    if-ltz p1, :cond_3

    const/16 v2, 0x17

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_2

    const/16 v2, 0x3b

    if-le p2, v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 117
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    return-void

    .line 114
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x8fe

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x8fd

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public SetTimeToDisplayFromInstant(Ljava/util/Calendar;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the time from the instant to be shown in the Time Picker popup. Current time is shown by default."
    .end annotation

    .line 125
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v0

    .line 126
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result p1

    .line 127
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    invoke-virtual {v1, v0, p1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 128
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    return-void
.end method

.method public click()V
    .locals 3

    .line 139
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 142
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 143
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    invoke-virtual {v2, v1, v0}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 144
    iget v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:I

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
