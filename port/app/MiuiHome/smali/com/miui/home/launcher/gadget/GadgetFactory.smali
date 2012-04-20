.class public Lcom/miui/home/launcher/gadget/GadgetFactory;
.super Ljava/lang/Object;
.source "GadgetFactory.java"


# static fields
.field public static final GADGET_ID_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 2
    .parameter "activity"
    .parameter "info"
    .parameter "requestCode"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, gadget:Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .end local v0           #gadget:Landroid/view/View;
    return-object v0

    .line 109
    .restart local v0       #gadget:Landroid/view/View;
    :pswitch_0
    new-instance v0, Lcom/miui/home/launcher/gadget/FrequentContacts;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/FrequentContacts;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 112
    :pswitch_1
    new-instance v0, Lcom/miui/home/launcher/gadget/Player;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Player;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Lcom/miui/home/launcher/gadget/GlobalSearch;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GlobalSearch;-><init>(Landroid/content/Context;)V

    .line 116
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 120
    :pswitch_3
    new-instance v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;-><init>(Landroid/app/Activity;I)V

    .line 121
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 125
    :pswitch_4
    new-instance v0, Lcom/miui/home/launcher/gadget/PhotoFrame;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/gadget/PhotoFrame;-><init>(Landroid/app/Activity;I)V

    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static final getGadgetIdList()[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    return-object v0
.end method

.method public static getGadgetItemId(Landroid/os/Bundle;)J
    .locals 5
    .parameter "bundle"

    .prologue
    const-wide/16 v3, -0x1

    .line 137
    const-string v2, "callback_id"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 138
    .local v0, id:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 140
    :try_start_0
    const-string v2, "com.miui.android.resourcebrowser.TRACK_ID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 145
    :cond_0
    :goto_0
    return-wide v0

    .line 141
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x4

    .line 41
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 42
    .local v0, result:Lcom/miui/home/launcher/gadget/GadgetInfo;
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 45
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 46
    const v1, 0x7f0b002f

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 47
    const v1, 0x7f020036

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 50
    :pswitch_1
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 51
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 52
    const v1, 0x7f0b004f

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 53
    const v1, 0x7f02004f

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 56
    :pswitch_2
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 57
    iput v3, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 58
    const v1, 0x7f0b0054

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 59
    const v1, 0x7f020055

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 62
    :pswitch_3
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 63
    iput v3, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 64
    const v1, 0x7f0b0055

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 65
    const v1, 0x7f020030

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 68
    :pswitch_4
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 69
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 70
    const v1, 0x7f0b0056

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 71
    const v1, 0x7f020031

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 74
    :pswitch_5
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 75
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 76
    const v1, 0x7f0b0057

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 77
    const v1, 0x7f020032

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 80
    :pswitch_6
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 81
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 82
    const v1, 0x7f0b0059

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 83
    const v1, 0x7f020048

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 86
    :pswitch_7
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 87
    iput v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 88
    const v1, 0x7f0b005a

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 89
    const v1, 0x7f02004a

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 92
    :pswitch_8
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 93
    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 94
    const v1, 0x7f0b0058

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 95
    const v1, 0x7f02004c

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static updateGadgetBackup(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 149
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateBackup(Landroid/content/Context;)V

    .line 150
    return-void
.end method
