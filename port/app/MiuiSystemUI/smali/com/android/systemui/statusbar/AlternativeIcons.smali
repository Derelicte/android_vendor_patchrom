.class public Lcom/android/systemui/statusbar/AlternativeIcons;
.super Ljava/lang/Object;
.source "AlternativeIcons.java"


# static fields
.field private static sEnabled:Z

.field private static sMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Integer;)I
    .locals 4
    .parameter "originalId"

    .prologue
    .line 37
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020081

    const v3, 0x7f020082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020095

    const v3, 0x7f020096

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020097

    const v3, 0x7f020098

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a5

    const v3, 0x7f0200a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020099

    const v3, 0x7f02009a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009d

    const v3, 0x7f02009e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a1

    const v3, 0x7f0200a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a3

    const v3, 0x7f0200a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a7

    const v3, 0x7f0200a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a9

    const v3, 0x7f0200aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200be

    const v3, 0x7f0200bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200c0

    const v3, 0x7f0200c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200c2

    const v3, 0x7f0200c3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200c4

    const v3, 0x7f0200c5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200c6

    const v3, 0x7f0200c7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200c8

    const v3, 0x7f0200c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ca

    const v3, 0x7f0200cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200cc

    const v3, 0x7f0200cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200f5

    const v3, 0x7f0200f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200d2

    const v3, 0x7f0200d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200d7

    const v3, 0x7f0200d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200dc

    const v3, 0x7f0200dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200e1

    const v3, 0x7f0200e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200e6

    const v3, 0x7f0200e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200eb

    const v3, 0x7f0200ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ed

    const v3, 0x7f0200ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200f1

    const v3, 0x7f0200f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200f9

    const v3, 0x7f0200fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200fe

    const v3, 0x7f0200ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020100

    const v3, 0x7f020101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02010a

    const v3, 0x7f02010b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02010c

    const v3, 0x7f02010d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02010f

    const v3, 0x7f020110

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020112

    const v3, 0x7f020113

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020115

    const v3, 0x7f020116

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020105

    const v3, 0x7f020106

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x1080087

    const v3, 0x7f0200fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200f7

    const v3, 0x7f0200f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200d5

    const v3, 0x7f0200d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200da

    const v3, 0x7f0200db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200df

    const v3, 0x7f0200e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200e4

    const v3, 0x7f0200e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200e9

    const v3, 0x7f0200ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009f

    const v3, 0x7f0200a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009b

    const v3, 0x7f02009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ef

    const v3, 0x7f0200f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200fb

    const v3, 0x7f0200fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200f3

    const v3, 0x7f0200f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sEnabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .line 151
    .local v0, resultId:Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .end local v0           #resultId:Ljava/lang/Integer;
    :cond_1
    move-object v0, p0

    .line 150
    goto :goto_0

    .line 151
    .restart local v0       #resultId:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/systemui/statusbar/AlternativeIcons;->sEnabled:Z

    return v0
.end method

.method public static setEnabled(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/systemui/statusbar/AlternativeIcons;->sEnabled:Z

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_0
    sput-boolean p0, Lcom/android/systemui/statusbar/AlternativeIcons;->sEnabled:Z

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method
