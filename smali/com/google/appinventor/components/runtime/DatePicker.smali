.class public Lcom/google/appinventor/components/runtime/DatePicker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, launches a popup dialog to allow the user to select a date.</p>"
    version = 0x9
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

.field private androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[Ljava/lang/String;

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 44
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    .line 174
    new-instance v0, Lcom/google/appinventor/components/runtime/DatePicker$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DatePicker$1;-><init>(Lcom/google/appinventor/components/runtime/DatePicker;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    const/4 v1, 0x2

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    add-int/2addr v1, v0

    .line 60
    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:I

    const/4 v0, 0x5

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    .line 62
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:I

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    .line 63
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/google/appinventor/components/runtime/DatePicker;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/DatePicker;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->androidUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/DatePicker;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/DatePicker;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/DatePicker;)Landroid/app/DatePickerDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/DatePicker;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/DatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:I

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/DatePicker;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    return p1
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/DatePicker;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:I

    return p1
.end method


# virtual methods
.method public AfterDateSet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that runs after the user chooses a Date in the dialog"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterDateSet"

    .line 204
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Day()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the Day of the month that was last picked using the DatePicker."
    .end annotation

    .line 109
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    return v0
.end method

.method public Instant()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the instant of the date that was last picked using the DatePicker."
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    return-object v0
.end method

.method public LaunchPicker()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the DatePicker popup."
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DatePicker;->click()V

    return-void
.end method

.method public Month()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of the Month that was last picked using the DatePicker. Note that months start in 1 = January, 12 = December."
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:I

    return v0
.end method

.method public MonthInText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the name of the Month that was last picked using the DatePicker, in textual format."
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[Ljava/lang/String;

    iget v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public SetDateToDisplay(III)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date to be displayed when the date picker opens.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    .line 127
    :try_start_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p1, v0, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 128
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 129
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x961

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "SetDateToDisplay"

    invoke-virtual {v2, p0, v4, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 134
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    return-void
.end method

.method public SetDateToDisplayFromInstant(Ljava/util/Calendar;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date from the instant to be displayed when the date picker opens."
    .end annotation

    .line 140
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result v0

    .line 141
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result v1

    .line 142
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result p1

    .line 143
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

    invoke-virtual {v2, v0, v1, p1}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 144
    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    return-void
.end method

.method public Year()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the Year that was last picked using the DatePicker"
    .end annotation

    .line 77
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    return v0
.end method

.method public click()V
    .locals 5

    .line 158
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 161
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 162
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 163
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

    invoke-virtual {v4, v2, v3, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    add-int/2addr v3, v1

    .line 164
    invoke-static {v2, v3, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
