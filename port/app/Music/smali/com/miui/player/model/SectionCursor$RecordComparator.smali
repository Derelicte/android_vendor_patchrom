.class Lcom/miui/player/model/SectionCursor$RecordComparator;
.super Ljava/lang/Object;
.source "SectionCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSortIndex:I

.field final synthetic this$0:Lcom/miui/player/model/SectionCursor;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor;I)V
    .locals 0
    .parameter
    .parameter "sortIndex"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor$RecordComparator;->this$0:Lcom/miui/player/model/SectionCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p2, p0, Lcom/miui/player/model/SectionCursor$RecordComparator;->mSortIndex:I

    .line 251
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/SectionCursor$RecordComparator;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 255
    iget v2, p0, Lcom/miui/player/model/SectionCursor$RecordComparator;->mSortIndex:I

    .line 256
    .local v2, sortKey:I
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, firstKey:Ljava/lang/String;
    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, secondKey:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    return v3
.end method
