.class public Lcom/android/deskclock/TimezonePicker$TimezoneComparator;
.super Ljava/lang/Object;
.source "TimezonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimezonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/deskclock/TimezonePicker$TimezoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortByName:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "sortByName"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-boolean p1, p0, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;->mSortByName:Z

    .line 164
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/TimezonePicker$TimezoneItem;Lcom/android/deskclock/TimezonePicker$TimezoneItem;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 174
    iget-boolean v2, p0, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;->mSortByName:Z

    if-eqz v2, :cond_0

    .line 175
    iget-object v0, p1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mDisplayName:Ljava/lang/String;

    .line 176
    .local v0, val1:Ljava/lang/String;
    iget-object v1, p2, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mDisplayName:Ljava/lang/String;

    .line 181
    .end local v0           #val1:Ljava/lang/String;
    :goto_0
    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 178
    :cond_0
    iget v2, p1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 179
    .local v0, val1:Ljava/lang/Integer;
    iget v2, p2, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, val2:Ljava/lang/Integer;
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    check-cast p1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    .end local p1
    check-cast p2, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;->compare(Lcom/android/deskclock/TimezonePicker$TimezoneItem;Lcom/android/deskclock/TimezonePicker$TimezoneItem;)I

    move-result v0

    return v0
.end method
