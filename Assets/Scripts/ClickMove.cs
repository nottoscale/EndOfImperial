using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ClickMove : MonoBehaviour
{
    [SerializeField]
    private NavMeshAgent navMeshAgent;
    [SerializeField]
    private Transform playerModel;
    [SerializeField]
    private Animator anim;

    private Transform thisTrans;

    private Vector3 rightRotation = new Vector3(90, 0, 0);
    private Vector3 leftRotation = new Vector3(270, 0, 180);


    private void Awake()
    {
        navMeshAgent.updateRotation = false;
        thisTrans = transform;
    }

    void Update()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            // Get the mouse position on the screen
            Vector3 mousePosition = Input.mousePosition;

            // Convert that position to a position in the world
            Vector3 targetPosition = Camera.main.ScreenToWorldPoint(mousePosition);

            navMeshAgent.destination = targetPosition;

            if (thisTrans.position.x < targetPosition.x)
            {
                playerModel.localEulerAngles = rightRotation;
            }
            else if (thisTrans.position.x > targetPosition.x)
            {
                playerModel.localEulerAngles = leftRotation;

            }

            anim.SetBool("isMoving", true);
        }

        if (anim.GetBool("isMoving"))
        {
            CheckReached();
        }
    }

    private void CheckReached()
    {
        // Check if we've reached the destination
        if (!navMeshAgent.pathPending)
        {
            if (navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance)
            {
                if (!navMeshAgent.hasPath || navMeshAgent.velocity.sqrMagnitude == 0f)
                {
                    // Done
                    anim.SetBool("isMoving", false);

                }
            }
        }
    }
}
