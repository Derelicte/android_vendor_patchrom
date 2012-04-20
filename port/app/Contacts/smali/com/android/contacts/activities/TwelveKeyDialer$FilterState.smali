.class final enum Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
.super Ljava/lang/Enum;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

.field public static final enum Accepted:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

.field public static final enum Called:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

.field public static final enum Missed:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

.field public static final enum None:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

.field public static final enum Stranger:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->None:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 204
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    const-string v1, "Missed"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Missed:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 205
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    const-string v1, "Called"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Called:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 206
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    const-string v1, "Accepted"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Accepted:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 207
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    const-string v1, "Stranger"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Stranger:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    sget-object v1, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->None:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Missed:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Called:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Accepted:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->Stranger:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->$VALUES:[Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFilterMenuTextId()I
    .locals 1

    .prologue
    .line 210
    const/high16 v0, 0x7f06

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    .locals 1
    .parameter

    .prologue
    .line 202
    const-class v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->$VALUES:[Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-virtual {v0}, [Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    return-object v0
.end method


# virtual methods
.method public getDeleteMenuTextId()I
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$7;->$SwitchMap$com$android$contacts$activities$TwelveKeyDialer$FilterState:[I

    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    const v0, 0x7f0b01dd

    :goto_0
    return v0

    .line 244
    :pswitch_0
    const v0, 0x7f0b01de

    goto :goto_0

    .line 246
    :pswitch_1
    const v0, 0x7f0b01df

    goto :goto_0

    .line 248
    :pswitch_2
    const v0, 0x7f0b01e0

    goto :goto_0

    .line 250
    :pswitch_3
    const v0, 0x7f0b01e1

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$7;->$SwitchMap$com$android$contacts$activities$TwelveKeyDialer$FilterState:[I

    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 230
    :pswitch_0
    const-string v0, "type=3"

    goto :goto_0

    .line 232
    :pswitch_1
    const-string v0, "type=2"

    goto :goto_0

    .line 234
    :pswitch_2
    const-string v0, "type=1"

    goto :goto_0

    .line 236
    :pswitch_3
    const-string v0, "contact_id< 0"

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$7;->$SwitchMap$com$android$contacts$activities$TwelveKeyDialer$FilterState:[I

    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 222
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
