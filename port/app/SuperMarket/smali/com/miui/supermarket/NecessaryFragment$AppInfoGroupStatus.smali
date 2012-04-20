.class final enum Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;
.super Ljava/lang/Enum;
.source "NecessaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppInfoGroupStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

.field public static final enum DOWNLOADING:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

.field public static final enum INSTALLED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

.field public static final enum SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

.field public static final enum UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->INSTALLED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    .line 492
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->DOWNLOADING:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    .line 493
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    const-string v1, "SELECTED"

    invoke-direct {v0, v1, v4}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    .line 494
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    const-string v1, "UNSELECTED"

    invoke-direct {v0, v1, v5}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    .line 490
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->INSTALLED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->DOWNLOADING:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->$VALUES:[Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

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
    .line 490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getImageResId(Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)I
    .locals 3
    .parameter "status"

    .prologue
    const v0, 0x3020132

    .line 497
    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$1;->$SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I

    invoke-virtual {p0}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 507
    :goto_0
    :pswitch_0
    return v0

    .line 499
    :pswitch_1
    const v0, 0x7f02001b

    goto :goto_0

    .line 501
    :pswitch_2
    const v0, 0x7f020004

    goto :goto_0

    .line 503
    :pswitch_3
    const v0, 0x3020131

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;
    .locals 1
    .parameter

    .prologue
    .line 490
    const-class v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->$VALUES:[Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-virtual {v0}, [Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    return-object v0
.end method
