package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class MinimumServersRequiredTest {

    // =========================
    // Basic Tests
    // =========================

    @Test
    void singleJob() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired("1-4")
        );
    }

    @Test
    void twoNonOverlappingJobs() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired("1-4 5-8")
        );
    }

    @Test
    void twoOverlappingJobs() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired("1-4 2-5")
        );
    }

    @Test
    void threeOverlappingJobs() {
        assertEquals(
            3,
            MinimumServersRequired.MinimumServersRequired("1-4 2-5 3-6")
        );
    }


    // =========================
    // Server Reuse Tests
    // =========================

    @Test
    void reuseOneServer() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired("1-4 5-8 9-12")
        );
    }

    @Test
    void reuseAfterMultipleJobs() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired("1-4 2-5 7-9")
        );
    }

    @Test
    void reuseBothServers() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired("1-4 2-5 7-9 8-10")
        );
    }

    @Test
    void longJobWithReusableSecondServer() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired("1-10 2-3 4-5")
        );
    }

    @Test
    void longJobWithManyReusableJobs() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "1-10 2-3 4-5 6-7 8-9"
            )
        );
    }


    // =========================
    // Complete Overlap Tests
    // =========================

    @Test
    void completeOverlapThreeJobs() {
        assertEquals(
            3,
            MinimumServersRequired.MinimumServersRequired("1-10 2-9 3-8")
        );
    }

    @Test
    void completeOverlapFiveJobs() {
        assertEquals(
            5,
            MinimumServersRequired.MinimumServersRequired(
                "1-10 2-9 3-8 4-7 5-6"
            )
        );
    }


    // =========================
    // Mixed Overlap Tests
    // =========================

    @Test
    void mixedOverlap() {
        assertEquals(
            3,
            MinimumServersRequired.MinimumServersRequired(
                "1-4 2-5 3-7 6-8 9-10"
            )
        );
    }

    @Test
    void mixedOverlapTwoServers() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "1-5 2-10 6-8 9-12"
            )
        );
    }

    @Test
    void mixedOverlapThreeServers() {
        assertEquals(
            3,
            MinimumServersRequired.MinimumServersRequired(
                "1-5 2-6 3-4 7-9 8-10"
            )
        );
    }


    // =========================
    // Input Order Tests
    // =========================

    @Test
    void jobsInDifferentOrder() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "2-3 1-10 4-5"
            )
        );
    }

    @Test
    void jobsInReverseOrder() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "1-10 2-3 4-5 6-7 8-9"
            )
        );
    }

    @Test
    void longJobFirst() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "1-10 2-3 4-5"
            )
        );
    }

    @Test
    void shortJobsFirst() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "2-3 4-5 1-10"
            )
        );
    }


    // =========================
    // Original Test
    // =========================

    @Test
    void originalExample() {
        assertEquals(
            3,
            MinimumServersRequired.MinimumServersRequired(
                "1-4 2-5 7-9 3-6"
            )
        );
    }


    // =========================
    // No Overlap Tests
    // =========================

    @Test
    void manyNonOverlappingJobs() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired(
                "1-2 3-4 5-6 7-8 9-10"
            )
        );
    }

    @Test
    void nonOverlappingJobsInReverseOrder() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired(
                "9-10 7-8 5-6 3-4 1-2"
            )
        );
    }


    // =========================
    // Boundary Tests
    // =========================

    @Test
    void touchingIntervals() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired(
                "1-5 5-10"
            )
        );
    }

    @Test
    void separatedByOneUnit() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired(
                "1-5 6-10"
            )
        );
    }

    @Test
    void multipleTouchingIntervals() {
        assertEquals(
            1,
            MinimumServersRequired.MinimumServersRequired(
                "1-5 5-10 10-15"
            )
        );
    }


    // =========================
    // Long Running Server Tests
    // =========================

    @Test
    void oneLongJobManyShortJobs() {
        assertEquals(
            2,
            MinimumServersRequired.MinimumServersRequired(
                "1-100 2-3 4-5 6-7 8-9"
            )
        );
    }

    @Test
    void twoLongJobsManyShortJobs() {
        assertEquals(
            3,
            MinimumServersRequired.MinimumServersRequired(
                "1-100 2-90 3-4 5-6 7-8"
            )
        );
    }


    // =========================
    // Invalid Input Tests
    // =========================

    @Test
    void nullInput() {
        assertEquals(
            -1,
            MinimumServersRequired.MinimumServersRequired(null)
        );
    }

    @Test
    void emptyInput() {
        assertEquals(
            -1,
            MinimumServersRequired.MinimumServersRequired("")
        );
    }

    @Test
    void whitespaceInput() {
        assertEquals(
            -1,
            MinimumServersRequired.MinimumServersRequired("   ")
        );
    }

}

